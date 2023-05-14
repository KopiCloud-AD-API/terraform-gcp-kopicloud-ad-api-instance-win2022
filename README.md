# Deploy a Google Cloud (GCP) Virtual Machine with KopiCloud AD API in Windows Server 2022
[![Terraform](https://img.shields.io/badge/terraform-v1.3+-blue.svg)](https://www.terraform.io/downloads.html)
[![KopiCloud-AD](https://img.shields.io/badge/kopiCloud_ad-v1.0+-blueviolet.svg)](https://www.kopicloud-ad-api.com)

The Terraform code in this repo will deploy a Google Cloud (GCP) Virtual Machine for **KopiCloud AD API** with Windows Server 2022 and SQL Server 2022 Express.

## Network Configuration

The code will create the network resources (VCP, and Subnet).

## Notes

- By default, the download and installation of **SQL Server Management Studio** is disabled because it will take lots of time.

- To get the credentials, login to GCP console and reset the password.

## Configuring Google Cloud Credentials

Read the document **How to Create a Service Account for Terraform in GCP (Google Cloud Platform)** to configure credentials.
https://medium.com/@gmusumeci/how-to-create-a-service-account-for-terraform-in-gcp-google-cloud-platform-f75a0cf918d1

## How to Set Up KopiCloud AD API

1. Get a License - Generate a free trial license (no credit card required) or purchase a license [here](https://www.kopicloud-ad-api.com/get-license)

2. Install **KopiCloud AD API** using the code in this repo

3. Join the machine to the AD Domain to manage using the API

4. Run the **KopiCloud AD API Config tool** located in the folder **C:\KopiCloud-AD-API-Config**
