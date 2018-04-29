# output "instance_id" {
#   value = "${google_compute_instance.nomad-host.*.name}"
# }

output "mgm_public_ips" {
  value = "${google_compute_instance.mgm-host.*.network_interface.0.access_config.0.assigned_nat_ip}"
}

output "mgm_ips" {
  value = "${google_compute_instance.mgm-host.*.network_interface.0.network_ip}"
}

output "mgm_names" {
  value = "${google_compute_instance.mgm-host.*.name}"
}

output "app_ips" {
  value = "${google_compute_instance.app-host.*.network_interface.0.network_ip}"
}

output "app_names" {
  value = "${google_compute_instance.app-host.*.name}"
}

output "com_ips" {
  value = "${google_compute_instance.com-host.*.network_interface.0.network_ip}"
}

output "com_names" {
  value = "${google_compute_instance.com-host.*.name}"
}

output "db_ips" {
  value = "${google_compute_instance.db-host.*.network_interface.0.network_ip}"
}

output "db_names" {
  value = "${google_compute_instance.db-host.*.name}"
}
