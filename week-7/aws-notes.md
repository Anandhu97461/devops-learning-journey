
# AWS Notes

## ✅ Course: AWS Certified Cloud Practitioner (KodeKloud)

---

## ☁️ What is Cloud Computing?
- On-demand delivery of IT resources over the Internet.
- Pay-as-you-go model.
- No need to own or manage physical data centers or servers.
- Scalable, elastic, and accessible from anywhere.

---

## 🟡 Cloud vs Traditional IT
| Traditional IT        | Cloud Computing         |
|-----------------------|-------------------------|
| High upfront cost     | Pay-as-you-go           |
| Limited scalability   | Highly scalable         |
| Manual provisioning   | Automated provisioning  |
| Requires maintenance  | Managed by cloud vendor |

---

## 🟢 What is AWS?
- Amazon Web Services (AWS) is a cloud service provider offering over 200 services globally.
- Used by businesses of all sizes — from startups to enterprises.
- Popular for compute, storage, databases, analytics, machine learning, and DevOps tools.

---

## 🎯 Benefits of Cloud Computing
- **Agility** – Faster deployment and experimentation.
- **Elasticity** – Scale up/down based on demand.
- **Cost savings** – Convert capital expenses (CAPEX) to operational expenses (OPEX).
- **Global reach** – Deploy services in multiple regions worldwide.
- **Flexibility** – Use right tool for each job (e.g., EC2, Lambda, etc.)

---

## 💰 Cloud Economics – Pricing Models
- **Free Tier** – $200 credits for 6 months (new model)
- **On-Demand** – Pay for what you use.
- **Reserved Instances** – Commit to 1 or 3 years for discounts.
- **Volume Discounts** – Reduced price for higher usage.

---

## 🧠 Cloud Design Principles
- **Design for Failure** – Build redundancy into systems.
- **Decouple Components** – Use services like SQS, SNS.
- **Implement Elasticity** – Use Auto Scaling.
- **Think in Parallel** – Distribute workloads.
- **Automate Everything** – Use CloudFormation, CI/CD.

---

## 🧑‍💻 AWS Interaction Methods
- **Management Console** – Web UI.
- **AWS CLI** – Command-line access.
- **SDKs** – For programmatic access via code.

---

## 🌐 AWS Global Infrastructure
- **Region** – A geographic area with multiple availability zones.
- **Availability Zone (AZ)** – Data centers within a region designed for failover and high availability.
- **Edge Location** – Content delivery endpoints used by services like CloudFront (CDN).
- AWS has multiple Regions and AZs worldwide for redundancy and low latency.
- Services can be deployed regionally for availability and compliance.

---

## 🔐 AWS Identity & Access Management (IAM)
- **IAM Users** – Represent individual people/services.
- **IAM Groups** – Group multiple users and assign policies.
- **IAM Roles** – Assign temporary permissions for AWS resources.
- **IAM Policies** – JSON-based permissions documents.
- **MFA** – Multi-Factor Authentication for stronger security.

---

## 🏢 AWS Organizations & SCPs
- **Organizations** – Manage multiple AWS accounts centrally.
- **Organizational Units (OUs)** – Group accounts within the org.
- **Service Control Policies (SCPs)** – Set permission boundaries across accounts, even if IAM allows access.

---

## 🛡️ Preventative Security Services
- **AWS WAF** – Web Application Firewall for HTTP protection.
- **AWS Shield** – DDoS protection.
- **AWS Network Firewall** – VPC-level firewall protection.

---

## 🕵️ Detection-Based Security Services
- **Amazon GuardDuty** – Threat detection & continuous monitoring.
- **AWS Inspector** – Scan EC2 for vulnerabilities.
- **AWS Config** – Track configuration changes.
- **Security Hub** – Central view of security alerts.
- **Amazon Detective** – Investigate security issues.
- **Security Lake** – Centralized security data storage.

---

## 🛠️ Management-Based Security Services
- **AWS Firewall Manager** – Central security policy management.
- **Resource Access Manager (RAM)** – Share AWS resources.
- **Amazon Cognito** – User identity and authentication.
- **IAM Identity Center (SSO)** – Central login access.
- **Secrets Manager** – Securely store API keys, passwords.
- **Certificate Manager** – Manage SSL/TLS certs.
- **Private CA** – Create/manage private certs.

---

## 🔑 Cryptographic Key Management
- **AWS KMS** – Key Management Service to create, control encryption keys.
- **AWS CloudHSM** – Dedicated hardware security module.
- **AWS Certificate Manager (ACM)** – SSL/TLS certificates.
- **AWS Private CA** – Issue private certs within AWS.

---

## ✅ Summary
- Understood basic cloud concepts and AWS service overview.
- Learned about pricing, infrastructure, IAM, Organizations, and SCPs.
- Studied preventative, detective, and management security services.
- Explored cryptographic key management solutions in AWS.
