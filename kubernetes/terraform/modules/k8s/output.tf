output "external_ip_address_k8s_master" {
  value = yandex_compute_instance.k8s.0.network_interface.0.nat_ip_address
}

output "external_ip_address_k8s_worker1" {
  value = yandex_compute_instance.k8s.1.network_interface.0.nat_ip_address
}

output "external_ip_address_k8s_worker2" {
  value = yandex_compute_instance.k8s.2.network_interface.0.nat_ip_address
}
