variable "region" {
  default = "europe-west2"
}

variable "project_name" {
  description = "The ID of the Google Cloud project"
}

variable "auto_create_subnetworks" {
  default = "false"
}

variable "allow_stopping_for_update" {
  default = "true"
}

variable session_affinity {
  description = "The session affinity for the backends example: NONE, CLIENT_IP. Default is `NONE`."
  default     = "NONE"
}

variable "region_zone" {
  default = "europe-west2-a"
}

# app setting

variable "app_cidr_range" {
  description = "Subnet CIDR range"
}

variable "app_machine_type" {
  description = "Sizing of VMs"
}

variable "app_host_count" {
  description = "Number of VMs"
}

variable "app_host_image" {
  description = "Image used for booting VMs"
}

variable "app_allowed_ports" {
  type = "list"
}

variable "app_public_key_path" {
  description = "Public key used for initial setup"
}

variable "app_private_key_path" {
  description = "Private key used for initial setup"
}

# db setting

variable "db_cidr_range" {
  description = "Subnet CIDR range"
}

variable "db_machine_type" {
  description = "Sizing of VMs"
}

variable "db_host_count" {
  description = "Number of VMs"
}

variable "db_host_image" {
  description = "Image used for booting VMs"
}

variable "db_allowed_ports" {
  type = "list"
}

variable "db_public_key_path" {
  description = "Public key used for initial setup"
}

variable "db_private_key_path" {
  description = "Private key used for initial setup"
}

variable db_lb_ip_address {
  description = "IP address of the internal load balancer, if empty one will be assigned. Default is empty."
  default     = ""
}

variable db_lb_ip_protocol {
  description = "The IP protocol for the backend and frontend forwarding rule. TCP or UDP."
  default     = "TCP"
}

# com setting

variable "com_cidr_range" {
  description = "Subnet CIDR range"
}

variable "com_machine_type" {
  description = "Sizing of VMs"
}

variable "com_host_count" {
  description = "Number of VMs"
}

variable "com_host_image" {
  description = "Image used for booting VMs"
}

variable "com_allowed_ports" {
  type = "list"
}

variable "com_public_key_path" {
  description = "Public key used for initial setup"
}

variable "com_private_key_path" {
  description = "Private key used for initial setup"
}

# mgm setting

variable "mgm_cidr_range" {
  description = "Subnet CIDR range"
}

variable "mgm_machine_type" {
  description = "Sizing of VMs"
}

variable "mgm_host_count" {
  description = "Number of VMs"
}

variable "mgm_host_image" {
  description = "Image used for booting VMs"
}

variable "mgm_public_key_path" {
  description = "Public key used for initial setup"
}

variable "mgm_private_key_path" {
  description = "Private key used for initial setup"
}
