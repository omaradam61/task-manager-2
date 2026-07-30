# Task Manager API — DevOps 101 Lab Starter Kit

This is the single application you will carry through **every module** of the
DevOps 101 workshop. Each lab adds one layer to it, until — by the capstone —
you have a full production-style pipeline.

## What's inside
```
app/                     Node.js Express API (the app you deploy everywhere)
  server.js              /health /metrics /tasks (GET/POST/DELETE)
  __tests__/             Jest + supertest test suite (5 tests, ~90% coverage)
Dockerfile               Module 4 — containerize (non-root, small base)
docker-compose.yml       Module 4 — app + postgres
monitoring/              Module 9 — prometheus + grafana + alert rules
.github/workflows/ci.yml Module 5 — lint -> test -> build -> scan -> push
terraform/               Module 7 — VPC/SG/EC2 on AWS
k8s/                     Module 8 — deployment, service, configmap, secret
system-report.sh         Module 2 — bash automation starter
```

## Run it locally in 30 seconds
```bash
cd app
npm install
npm start          # http://localhost:3000/health
npm test           # run the test suite
```

## Endpoints
| Method | Path         | Purpose                          |
|--------|--------------|----------------------------------|
| GET    | /health      | Liveness — {status, version}     |
| GET    | /metrics     | Prometheus metrics               |
| GET    | /tasks       | List tasks                       |
| POST   | /tasks       | Create task {title, description} |
| DELETE | /tasks/:id   | Delete a task                    |

## How to use with the workbook
Open **DevOps_101_Lab_Workbook.md** and start at Lab 1. Every lab tells you
which files in this kit to use. Replace `YOURUSER` with your Docker Hub
username wherever you see it.

> Safety: never commit real secrets or `terraform.tfvars`. The `.gitignore`
> already protects you. `secret.yaml` here uses a throwaway demo value.
