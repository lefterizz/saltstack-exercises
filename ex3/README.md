### 📁 `ex3/README.md`

# Exercise 3: Configure NGINX Using Pillar Data

## Objective

Deploy a custom NGINX server configuration using a pillar-defined port.

## Files

- `nginx_config.sls`: Deploys `/etc/nginx/conf.d/default.conf` using `pillar['nginx_port']`.
- `pillar/nginx.sls`: Defines the port.
- `pillar/top.sls`: Maps the pillar to all minions.

## How to Run

Refresh pillars:
```bash
salt '*' saltutil.refresh_pillar
```
Apply config:
```bash
salt '*' state.apply nginx_config
```
Reload NGINX:
```bash
salt '*' cmd.run 'nginx -s reload'
```
Verification
`curl http://localhost:8080`

## Notes:
- Fixed a YAML formatting issue (mapping values are not allowed) caused by incorrect pillar syntax.
- Used the same index file path from Exercise 1.
- Verified pillar was applied and NGINX served the page correctly after reload.
