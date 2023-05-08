###########################
## GCP Windows VM - Main ##
###########################

# Terraform plugin for creating random ids
resource "random_id" "instance_id" {
  byte_length = 4
}

# Download script from github
data "http" "powershell_script" {
  url = "https://raw.githubusercontent.com/KopiCloud-AD-API/kopicloud-ad-api-setup-scripts/main/setup-win2022.ps1"
}

resource "local_file" "powershell_script" {
  content  = data.http.powershell_script.response_body
  filename = "${path.module}/local_script_path.ps1"
}

# Create VM
resource "google_compute_instance" "api" {
  name         = "${var.app_name}-${var.environment}-vm${random_id.instance_id.hex}"
  machine_type = var.windows_instance_type
  zone         = var.gcp_zone
  hostname     = "${var.app_name}-vm${random_id.instance_id.hex}.${var.app_domain}"
  tags         = ["rdp", "https-server"]

  boot_disk {
    initialize_params {
      image = var.windows_2022_sku
    }
  }

  network_interface {
    network    = google_compute_network.vpc.name
    subnetwork = google_compute_subnetwork.network_subnet.name
    access_config {}
  }

  metadata = {
    "windows-startup-script-ps1" = data.http.powershell_script.response_body
  }
}