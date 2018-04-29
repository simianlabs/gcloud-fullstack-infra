provider "google" {
  credentials = "${file("./secret/fullstack-infra.json")}"
  project     = "${var.project_name}"
  region      = "${var.region}"
}
