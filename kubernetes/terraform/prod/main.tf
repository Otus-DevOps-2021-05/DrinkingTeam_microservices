provider "yandex" {
  service_account_key_file = file(var.service_account_key_file)
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}

module "k8s" {
  source          = "../modules/k8s"
  public_key_path = var.public_key_path
  k8s_disk_image  = var.k8s_disk_image
  subnet_id       = var.subnet_id
}

module "inventory" {
  source          = "../modules/inventory"
  master = module.k8s.external_ip_address_k8s_master
  worker1 = module.k8s.external_ip_address_k8s_worker1
  worker2 = module.k8s.external_ip_address_k8s_worker2
}
