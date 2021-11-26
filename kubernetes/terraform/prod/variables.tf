variable cloud_id {
  description = "Cloud"
}
variable "folder_id" {
  description = "Folder"
}
variable "zone" {
  description = "Zone"
  default     = "ru-central1-a"
}
variable "public_key_path" {
  description = "Path to the public key used for ssh access"
}
variable "service_account_key_file" {
  description = "Service account key file"
}
variable "subnet_id" {
  description = "Subnet id"
}
variable "connection_key_file" {
  description = "Ssh connection key file"
}
variable "app_zone" {
  description = "App zone"
  default     = "ru-central1-a"
}
variable "k8s_disk_image" {
  description = "Disk image for k8s"
  default     = "f2e8e855i10b6gs5pom0"
}
