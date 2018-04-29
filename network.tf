resource "google_compute_network" "vpc-network" {
  name                    = "${var.project_name}-network"
  auto_create_subnetworks = "${var.auto_create_subnetworks}"
}

resource "google_compute_subnetwork" "app-subnet" {
  name                     = "${var.project_name}-app-subnet"
  ip_cidr_range            = "${var.app_cidr_range}"
  network                  = "${google_compute_network.vpc-network.self_link}"
  region                   = "${var.region}"
  private_ip_google_access = "true"
}

resource "google_compute_subnetwork" "mgm-subnet" {
  name                     = "${var.project_name}-mgm-subnet"
  ip_cidr_range            = "${var.mgm_cidr_range}"
  network                  = "${google_compute_network.vpc-network.self_link}"
  region                   = "${var.region}"
  private_ip_google_access = "true"
}

resource "google_compute_subnetwork" "com-subnet" {
  name                     = "${var.project_name}-com-subnet"
  ip_cidr_range            = "${var.com_cidr_range}"
  network                  = "${google_compute_network.vpc-network.self_link}"
  region                   = "${var.region}"
  private_ip_google_access = "true"
}

resource "google_compute_subnetwork" "db-subnet" {
  name                     = "${var.project_name}-db-subnet"
  ip_cidr_range            = "${var.db_cidr_range}"
  network                  = "${google_compute_network.vpc-network.self_link}"
  region                   = "${var.region}"
  private_ip_google_access = "true"
}
