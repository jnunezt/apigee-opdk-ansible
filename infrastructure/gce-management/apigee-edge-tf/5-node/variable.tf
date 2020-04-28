variable "router_name" {
  default = "default"
}

variable "region" {
  default = "us-east1"
}

variable "zone" {
  default = "us-east1-b"
}

variable "image_name" {
  default = "centos-7"
}

variable "image_project" {
  default = "centos-cloud"
}

variable "machine_type" {
  default = "n1-standard-4"
}

variable "instance_scopes" {
  default = [
    "compute-rw",
    "storage-ro"
  ]
}

variable "dc_region" {
  default = "1"
}

variable "dc_1_ms_count" {
  default = 1
}

variable "dc_2_ms_count" {
  default = 0
}

variable "dc_1_ds_count" {
  default = 3
}

variable "dc_2_ds_count" {
  default = 0
}

variable "dc_1_rmp_count" {
  default = 2
}

variable "dc_2_rmp_count" {
  default = 0
}

variable "dc_1_qpid_count" {
  default = 2
}

variable "dc_2_qpid_count" {
  default = 0
}

variable "dc_1_pg_only_count" {
  default = 1
}

variable "dc_1_pgmaster_count" {
  default = 0
}

variable "dc_1_pgstandby_count" {
  default = 0
}

variable "dc_2_pgstandby_count" {
  default = 0
}

variable "credentials_file" {
  default = "~/.apigee-secure/sandbox/sandbox-default-service-account.json"
}

variable "gcp_project_name" {
  default = "sandbox-173316"
}

variable "service_account_email" {
  default = "736255665193-compute@developer.gserviceaccount.com"
}

variable "nat_dc_2_count" {
  default = "0"
}