#########################
## GCP Provider - Main ##
#########################

# Define Terraform provider
terraform {
  required_version = "~> 1.3"

  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~>4.0" #
    }
  }
}

provider "google" {
  credentials = file(var.gcp_auth_file)
  project     = var.gcp_project
  region      = var.gcp_region
  zone        = var.gcp_zone
}
