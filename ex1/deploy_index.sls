# deploy_index.sls
/var/www/html/index.nginx-debian.html:
  file.managed:
    - contents: "Welcome to NGINX served by SaltStack!"
