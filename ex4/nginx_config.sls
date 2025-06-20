# nginx_config
/var/www/html/index.nginx-debian.html:
  file.managed:
    - contents: "SaltStack Orchestration Example!"
