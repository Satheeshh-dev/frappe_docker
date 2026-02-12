FROM frappe/erpnext:version-15

ENV FRAPPE_SITE_NAME=site1.local
ENV PORT=8080

EXPOSE 8080

CMD ["bash", "-c", "bench start"]
