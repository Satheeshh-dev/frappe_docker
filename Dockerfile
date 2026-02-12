FROM frappe/bench:py3.10

WORKDIR /home/frappe

# 1. Initialize bench (skip redis config for Railway)
RUN bench init frappe-bench \
    --frappe-branch version-15 \
    --skip-redis-config-generation

WORKDIR /home/frappe/frappe-bench

# 2. Get core apps
RUN bench get-app erpnext --branch version-15
RUN bench get-app payments

EXPOSE 8000

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "frappe.app:application"]
