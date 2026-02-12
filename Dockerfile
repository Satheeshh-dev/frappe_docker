FROM frappe/bench:latest

WORKDIR /home/frappe/frappe-bench

# Get core apps
RUN bench get-app erpnext --branch version-15
RUN bench get-app payments

EXPOSE 8000

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "frappe.app:application"]
