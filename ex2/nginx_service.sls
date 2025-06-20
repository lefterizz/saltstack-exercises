# nginx_service.sls
nginx:
  pkg.installed

nginx_service:
  service.running:
    - name: nginx
    - enable: True
    - require:
      - pkg: nginx
