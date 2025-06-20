# SaltStack Lab Exercises

This repository contains a series of SaltStack exercises completed as part of a configuration management training project. Each folder includes individual state files, pillar configurations (if used), and instructions for execution and verification.

## Contents

- [Exercise 1](ex1/README.md): Install NGINX and deploy a static HTML file
- [Exercise 2](ex2/README.md): Manage NGINX service and execute remote commands
- [Exercise 3](ex3/README.md): Configure NGINX using pillar data
- [Exercise 4](ex4/README.md): Use SaltStack orchestration with highstate

---

## Requirements

- Docker & Docker Compose
- Salt Master & Minion containers (based on [salt-docker-enviroment](https://github.com/lefterizz/salt-docker-enviroment))
- Basic understanding of SaltStack states and pillars

## Running the Setup

Run the environment locally:

```bash
docker-compose up -d
```
Apply any individual state:

```bash
salt '*' state.apply <state_name>
```
Run orchestration:
```bash
salt '*' state.highstate
```
