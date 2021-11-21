resource "local_file" "ansible_inv" {
  content = templatefile("../modules/inventory/files/k8s.ini.tpl", { master = var.master, worker1 = var.worker1, worker2 = var.worker2})
  filename = "../../ansible/inventory/prod/k8s.ini"
}
