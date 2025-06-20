# deploy_index.sls
/var/www/nginx/html/index.html:
  file.managed:
    - contents: "Welcome to NGINX served by SaltStack!"
