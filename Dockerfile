FROM frappe/erpnext:version-15

EXPOSE 8000

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "frappe.app:application"]
