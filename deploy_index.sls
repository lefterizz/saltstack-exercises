# deploy_index.sls
/usr/share/nginx/html/index.html:
  file.managed:
    - contents: "Welcome to NGINX served by SaltStack!"
