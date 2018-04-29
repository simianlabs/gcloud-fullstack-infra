resource "google_compute_instance" "mgm-host" {
  count = "${var.mgm_host_count}"

  name                      = "mgm-${format("%02d", count.index+1)}"
  machine_type              = "${var.mgm_machine_type}"
  zone                      = "${var.region_zone}"
  tags                      = ["mgm-node"]
  allow_stopping_for_update = "${var.allow_stopping_for_update}"

  boot_disk {
    initialize_params {
      image = "${var.mgm_host_image}"
    }
  }

  network_interface {
    subnetwork = "${google_compute_subnetwork.mgm-subnet.self_link}"

    access_config {
      # Ephemeral
    }
  }

  metadata {
    ssh-keys = "root:${file("${var.mgm_public_key_path}")}"
  }

  #   metadata_startup_script = "${file("scripts/startup.sh")}"
}

resource "google_compute_instance" "app-host" {
  count = "${var.app_host_count}"

  name                      = "app-${format("%02d", count.index+1)}"
  machine_type              = "${var.app_machine_type}"
  zone                      = "${var.region_zone}"
  tags                      = ["app-node"]
  allow_stopping_for_update = "${var.allow_stopping_for_update}"

  boot_disk {
    initialize_params {
      image = "${var.app_host_image}"
    }
  }

  network_interface {
    subnetwork = "${google_compute_subnetwork.app-subnet.self_link}"
  }

  metadata {
    ssh-keys = "root:${file("${var.app_public_key_path}")}"
  }

  #   metadata_startup_script = "${file("scripts/startup.sh")}"
}

resource "google_compute_instance" "com-host" {
  count = "${var.com_host_count}"

  name                      = "com-${format("%02d", count.index+1)}"
  machine_type              = "${var.com_machine_type}"
  zone                      = "${var.region_zone}"
  tags                      = ["com-node"]
  allow_stopping_for_update = "${var.allow_stopping_for_update}"

  boot_disk {
    initialize_params {
      image = "${var.com_host_image}"
    }
  }

  network_interface {
    subnetwork = "${google_compute_subnetwork.com-subnet.self_link}"
  }

  metadata {
    ssh-keys = "root:${file("${var.com_public_key_path}")}"
  }

  #   metadata_startup_script = "${file("scripts/startup.sh")}"
}

resource "google_compute_instance" "db-host" {
  count = "${var.db_host_count}"

  name                      = "db-${format("%02d", count.index+1)}"
  machine_type              = "${var.db_machine_type}"
  zone                      = "${var.region_zone}"
  tags                      = ["db-node"]
  allow_stopping_for_update = "${var.allow_stopping_for_update}"

  boot_disk {
    initialize_params {
      image = "${var.db_host_image}"
    }
  }

  network_interface {
    subnetwork = "${google_compute_subnetwork.db-subnet.self_link}"
  }

  metadata {
    ssh-keys = "root:${file("${var.db_public_key_path}")}"
  }

  #   metadata_startup_script = "${file("scripts/startup.sh")}"
}
