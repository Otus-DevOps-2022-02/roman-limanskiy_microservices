variable service_account_key_file {
  description = "key.json"
}

variable cloud_id {
  description = "Cloud"
}

variable folder_id {
  description = "Folder"
}

variable zone {
  description = "Zone"
  default     = "ru-central1-a"
}

variable app_disk_image {
  description = "Disk image for gitlab"
}

variable subnet_id {
  description = "Subnet"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}
