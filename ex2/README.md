### 📁 `ex2/README.md`

# Exercise 2: Manage NGINX Service and Remote Execution

## Objective

Use SaltStack to manage the NGINX service and remotely run service-related commands on the minion.

## Files

- `nginx_service.sls`: Ensures the NGINX service is enabled and running.

## How to Run

```bash
salt '*' state.apply nginx_service
```
## Remote Commands
Restart NGINX:
```bash
salt '*' service.restart nginx
```
Check NGINX status:
```bash
salt '*' service.status nginx
```
List processes:
```bash
salt '*' cmd.run 'ps aux | grep nginx'
```
