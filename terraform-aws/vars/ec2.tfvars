# EC2 Instance Variables
region         = "eu-north-1" # Replace with your desired AWS region
ami_id         = "ami-073130f74f5ffb161" # Replace with the AMI ID for your desired region and operating system (e.g., Amazon Linux 2, Ubuntu, etc.)
instance_type  = "t3.micro" # Replace with your desired instance type (e.g., t2.micro, t3.micro, etc.)
key_name       = "your-key-name"  # Replace with your actual key pair name
instance_count = 1
volume-size = 20

# VPC id
vpc_id  = "vpc-0b5a032de9d89594f"
subnet_ids     = ["subnet-0b2c1cb1dbc624954"]

# Ec2 Tags
name        = "prometheus-stack"
owner       = "monitoring-team"
environment = "dev"
cost_center = "monitoring"
application = "monitoring"

# CIDR Ingress Variables
create_ingress_cidr        = true
ingress_cidr_from_port     = [22, 80, 443, 9090, 9100, 9093, 3000]  # List of from ports
ingress_cidr_to_port       = [22, 80, 443, 9090, 9100, 9093, 3000]  # List of to ports
ingress_cidr_protocol      = ["tcp", "tcp", "tcp", "tcp", "tcp", "tcp", "tcp"]        # Protocol for all rules (you can add more if needed)
ingress_cidr_block         = ["0.0.0.0/0", "0.0.0.0/0", "0.0.0.0/0", "0.0.0.0/0", "0.0.0.0/0", "0.0.0.0/0", "0.0.0.0/0"]
ingress_cidr_description   = ["SSH", "HTTP", "HTTPS", "Prometheus", "Node-exporter", "Alert manager", "Grafana"]

# CIDR Egress Variables
create_egress_cidr    = true
egress_cidr_from_port = [0]
egress_cidr_to_port   = [0]
egress_cidr_protocol  = ["-1"]
egress_cidr_block     = ["0.0.0.0/0"]

