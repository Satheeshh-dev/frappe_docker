FROM frappe/bench:v5.15.0

WORKDIR /home/frappe/frappe-bench

EXPOSE 8000

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "frappe.app:application"]
