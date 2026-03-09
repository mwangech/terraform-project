terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.22.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "project-cdd11f37-1379-47fa-ae0"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_storage_bucket" "demo-bucket" {
  name                        = "terraform-demo-20250309-bucket"
  location                    = "US"
  force_destroy               = true
  uniform_bucket_level_access = true


  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "Delete"
    }
  }
}