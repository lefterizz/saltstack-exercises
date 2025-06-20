### 📁 `ex4/README.md`

# Exercise 4: SaltStack Orchestration with Highstate

## Objective

Use SaltStack highstate orchestration to apply multiple states in one coordinated run.

## Files

- `nginx_install.sls`: Installs nginx.
- `nginx_config.sls`: Deploys a static HTML file at `/var/www/html/index.html`.
- `top.sls`: Includes both states under the base environment.

## How to Run

```bash
salt '*' state.highstate
```

Verification
```bash
curl http://localhost
```
You should see: `SaltStack Orchestration Example!`

## Notes
- Originally had pillar rendering errors due to leftover config from Exercise 3.
- Removed pillars and used static content and direct file path instead.
- Orchestration now applies both package installation and index deployment correctly.
