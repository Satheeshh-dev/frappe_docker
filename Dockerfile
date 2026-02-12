FROM frappe/bench:latest

WORKDIR /home/frappe

# 1. Initialize bench
RUN bench init frappe-bench --frappe-branch version-15

WORKDIR /home/frappe/frappe-bench

# 2. Get core apps
RUN bench get-app erpnext --branch version-15
RUN bench get-app payments

EXPOSE 8000

# 3. Start server
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "frappe.app:application"]
