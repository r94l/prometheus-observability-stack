#  Prometheus Observability Stack
### Production-Oriented Monitoring & Alerting Deployment (AWS + Terraform)

A production-oriented observability platform provisioned on AWS using Terraform and deployed via Docker Compose: Delivering metrics collection, alerting workflows, and operational visibility using Prometheus, Alertmanager, Grafana, and Node Exporter.

---

##  Overview

This repository implements an end-to-end monitoring stack that includes:

- **Terraform** — Infrastructure provisioning (AWS EC2)
- **Bash Scripts** — Automated Docker, Docker Compose & SWAP setup
- **Makefile** — Dynamic configuration management
- **Prometheus** — Time-series metrics collection & rule evaluation  
- **Alertmanager** — Alert routing & grouping  
- **Grafana** — Dashboard visualization  
- **Node Exporter** — Host-level metrics  
- **Docker Compose** — Multi-service orchestration  

The implementation reflects how real-world DevOps environments structure infrastructure and observability systems which emphasizes automation, reproducibility, and operational readiness.

---

##  Project Objective

This project was built to:

- Provision infrastructure using Infrastructure as Code (Terraform)
- Automate EC2 bootstrap configuration using bash shell scripting
- Deploy a production-style monitoring stack
- Implement alerting aligned with operational thresholds
- Demonstrate Linux-level operational awareness

Modern DevOps is not just deploying tools, it is engineering environments.

---

##  Architecture

```
                ┌─────────────────────────────┐
                │          AWS Cloud          │
                │                             │
Terraform  ───► │   EC2 Instance (Linux)      │
Provisioning    │   ─────────────────────     │
                │   Docker Engine             │
                │   Docker Compose            │
                │                             │
                │   ┌────────────────────┐    │
                │   │   Node Exporter    │    │
                │   ├────────────────────┤    │
                │   │   Prometheus       │    │
                │   ├────────────────────┤    │
                │   │   Alertmanager     │    │
                │   ├────────────────────┤    │
                │   │   Grafana          │    │
                │   └────────────────────┘    │
                └─────────────────────────────┘
```

---

##  End-to-End Workflow

1. **Terraform provisions an AWS EC2 instance**
2. EC2 bootstrap scripts:
   - Install Docker
   - Install Docker Compose
   - Configure Linux SWAP
3. Makefile updates Prometheus configuration with server IP
4. Docker Compose deploys the monitoring stack
5. Prometheus scrapes Node Exporter
6. Alert rules evaluate thresholds
7. Alertmanager routes alerts
8. Grafana visualizes system metrics

This reflects full-stack DevOps ownership: infrastructure → OS → containers → observability.

---

##  Infrastructure Provisioning (Terraform)

Terraform provisions:

- AWS EC2 instance
- Required security group rules (ports 9090, 9093, 3000)
- Reproducible cloud environment

This ensures:

- Environment consistency
- Repeatable deployments
- IaC best practices
- Cloud-agnostic workflow capability

---

##  Linux & System-Level Configuration

### Shell Scripts

Custom shell scripts automate:

- Docker installation
- Docker Compose installation
- SWAP configuration
- System initialization at EC2 startup

This ensures the instance is production-ready immediately after provisioning.

---

###  Linux SWAP Configuration

SWAP was configured on the EC2 instance to:

- Improve memory resilience
- Prevent container crashes under memory pressure
- Simulate production-like stability on small instance types

This reflects operational awareness beyond basic container deployment.

---

###  Makefile Usage

A Makefile was implemented to:

- Dynamically update the EC2 server IP in Prometheus configuration
- Simplify configuration management
- Improve deployment repeatability

This introduces lightweight automation and environment abstraction — a key DevOps pattern.

---

##  Deployment

### Prerequisites

- Terraform
- Docker
- Docker Compose
- AWS credentials configured

### Deploy Infrastructure

```bash
terraform init
terraform plan
terraform apply
```

### Deploy Monitoring Stack

```bash
docker compose up
```

---

##  Service Endpoints

| Service        | Port |
|---------------|------|
| Prometheus    | 9090 |
| Alertmanager  | 9093 |
| Grafana       | 3000 |

---

##  Metrics Coverage

The stack monitors:

- CPU utilization  
- Memory consumption  
- Disk I/O & filesystem saturation  
- Network throughput  
- Container health  

These are foundational indicators for infrastructure reliability and capacity planning.

---

##  Alert Engineering

Alert rules simulate real-world operational risks:

- Sustained high CPU usage
- Memory pressure
- Disk saturation

Alertmanager supports:

- Slack integrations
- Email routing
- Alert grouping & deduplication
- Structured alert flow

This mirrors real production incident management patterns.

---

##  Production Considerations & Scaling Path

In a production-grade deployment, this architecture would extend to include:

- Persistent Prometheus storage
- TLS termination via reverse proxy (NGINX / Traefik)
- Secret management (Vault / environment injection)
- High Availability (HA Prometheus / Thanos)
- Kubernetes-native deployment
- Private VPC networking segmentation
- Centralized logging integration

---

##  Engineering Competencies Demonstrated

- Infrastructure as Code (Terraform)
- AWS Compute Provisioning
- Linux System Administration
- Shell Automation
- Swap Management & Memory Optimization
- Observability Architecture Design
- Alert Engineering
- Containerized Multi-Service Deployment
- SRE-Oriented Operational Thinking

---

##  What This Project Represents

This project demonstrates:

- End-to-end DevOps ownership
- Multi-layer infrastructure awareness (Cloud + OS + Containers)
- Production-aligned monitoring design
- Operational resilience considerations
- Systems engineered to be observable by default

If a system is not measurable, it is not production-ready.

---

## 📌 Future Enhancements

- Kubernetes-based deployment model
- Thanos for long-term metric retention
- Centralized logging (ELK / OpenSearch)
- Auto-scaling infrastructure
- CI/CD pipeline integration
- Full TLS & authentication hardening

---

If you're reviewing this repository, feel free to explore the configuration structure, automation scripts, and architectural decisions.

Monitoring is not a feature, it is an operational discipline.
