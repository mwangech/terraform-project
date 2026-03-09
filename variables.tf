
variable "credentials" {
    description = "Project credentials"
    default = "./keys/creds.json"
}
variable "project" {
    description = "Project Name"
    default = "project-cdd11f37-1379-47fa-ae0"
}

variable "region" {
    description = "Region Name"
    default = "us-central1"
}


variable "bq_datatset_name" {
    description = "My Big Query Dataset Name"
    default = "demo_dataset"
}

variable "location" {
    description = "Project location"
    default = "US"
  
}


variable "gcs_bucket_name" {
    description = "Bucket storage name"
    default = "terraform-demo-20250309-bucket"
  
}

variable "gcs_storage_classs" {
    description = "Bucket storage class"
    default = "STANDARD"
  
}