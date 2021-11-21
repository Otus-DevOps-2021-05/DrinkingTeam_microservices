resource "yandex_compute_instance" "k8s" {
  count = 3
  name = "k8s-${count.index}"
  zone = var.zone

  resources {
    cores         = 4
    core_fraction = 5
    memory        = 4
  }

  boot_disk {
    initialize_params {
      image_id = var.k8s_disk_image
      size = 40
      type = "network-ssd"
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }
}
