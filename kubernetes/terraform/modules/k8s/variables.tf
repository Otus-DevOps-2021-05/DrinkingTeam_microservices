variable "zone" {
  description = "Zone"
  default     = "ru-central1-a"
}
variable "k8s_disk_image" {
  description = "Disk image for k8s"
  default     = "fd8u5btn17k8h0jebsh6"
}
variable "public_key_path" {
  description = "Path to the public key used for ssh access"
}
variable "subnet_id" {
  description = "Subnet id"
}
