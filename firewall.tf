resource "google_compute_firewall" "ext-mgm-fw" {
  name    = "ext-mgm-firewall"
  network = "${google_compute_network.vpc-network.name}"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["mgm-node"]
}

resource "google_compute_firewall" "int-mgm-fw" {
  name    = "int-mgm-firewall"
  network = "${google_compute_network.vpc-network.name}"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["${var.mgm_cidr_range}"]
  target_tags   = ["app-node", "db-node", "com-node"]
}

resource "google_compute_firewall" "app-to-db-fw" {
  name    = "app-to-db-firewall"
  network = "${google_compute_network.vpc-network.name}"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = "${var.db_allowed_ports}"
  }

  source_ranges = ["${var.app_cidr_range}"]
  target_tags   = ["db-node"]
}

resource "google_compute_firewall" "int-com-fw" {
  name    = "int-com-firewall"
  network = "${google_compute_network.vpc-network.name}"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = "${var.com_allowed_ports}"
  }

  source_ranges = ["${var.app_cidr_range}", "${var.db_cidr_range}"]
  target_tags   = ["com-node"]
}
