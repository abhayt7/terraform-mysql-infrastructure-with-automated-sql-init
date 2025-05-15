# Terraform MySQL Infrastructure with Automated SQL Initialization

This project automates the provisioning of a MySQL database using **Terraform** and executes an **initial SQL script** for database schema creation and data insertion. It demonstrates **Infrastructure as Code (IaC)** practices for reproducible, version-controlled, and production-ready database infrastructure setups.

---

## 🚀 Features

- Provision a MySQL database using the Terraform MySQL provider
- Create users and grant privileges via Terraform
- Automatically run SQL initialization scripts (schema + seed data)
- Follows IaC best practices for consistency, traceability, and automation

---

## 🧰 Technologies Used

- Terraform (v1.x)
- MySQL (local or remote DB)
- Terraform MySQL Provider
- Null Provider for executing SQL scripts

---

## 🏗️ Infrastructure Components

| Component         | Description                                      |
|------------------|--------------------------------------------------|
| `mysql_database`  | Creates a new MySQL database                    |
| `mysql_user`      | Adds a MySQL user with defined privileges       |
| `mysql_grant`     | Grants user access to the database              |
| `null_resource`   | Executes SQL script using `local-exec` provisioner |

---

## 📂 Project Structure

```plaintext
├── main.tf         # Terraform configuration for MySQL DB, user, and grant
├── script.sql      # SQL file containing table creation and seed data
