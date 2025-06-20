### 📁 `ex1/README.md`

# Exercise 1: Install NGINX and Deploy HTML Page

## Objective

Install the NGINX package on the minion and deploy a simple static HTML file using SaltStack states.

## Files

- `nginx_install.sls`: Installs the nginx package.
- `deploy_index.sls`: Deploys a static HTML file to `/var/www/html/index.nginx-debian.html`.

## How to Run

```bash
salt '*' state.apply nginx_install
salt '*' state.apply deploy_index
