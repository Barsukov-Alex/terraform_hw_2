###cloud vars


variable "cloud_id" {
  type        = string
  default = "b1gi0o9ad7g6hm1qke89"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default = "b1g9tiefu5iru20j24oh"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "wm_web_default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

variable "vm_web_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Операционная система ВМ"
}

variable "vm_web_name_platform" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "Имя web-платформы"
}

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "Стандарт платформы"
}

 variable "vm_web_cores" {
    type = number
    default = 2
    description = "Кол-во ядер от 2 до 32"
}

variable "vm_web_memory" {
    type = number
    default = 1
    description = "Кол-во памяти"
}

variable "vm_web_core_fraction" {
    type = number
    default = 5
    description = "Процент использования"
}


###ssh vars
/*
variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDBuv6iVQ60LpS7m5/dwGIyXEFzeM/quSvsYhy1eIq8scox+5c9qXj8GaqLDZs0xq0pHPza4Ncr5zaY6JTsFjSnEWFq5kranb7D/u07vINpuReeAO+nB2WVpARG/P2VqYgsVLGQvd6bMUOk/2LiJjfkG38Jw2F58bst3xfVXItz1YFpqzLmwcIRoelJHgeG3/6aN3wNLqO8ZW9uELg0KvegzymFypYpJMqCx6mCUA/Y4exUVvai04yoYbiQAGnGAHkytRxgiCgMpdQraKbQukj9LCS//kRmCOwNZSGpGAaJGiYIM+8CyQG5CH2qFFRN8mfSsK5ASb4FRcVfBqOd49SrMvkMtfkSEnHaUlICToerGsi8yTvqdMr16RyfAMPqIBHV3L5dtdZCmRauY3eDQMAoxeXJ/0HPJtrztyY2cJWI8OysktFl/8PpkS80b1XaMv3L6HARsRCWmW9bkEHsSmI2qg7HLlZXJY5bIMOgb4B+Mrhs9zY9DvhzY3X/2O81GPc= barsukov@barsukov-VirtualBox"
  description = "ssh-keygen -t rsa"
}
*/


variable "vms_resources" {
  type         = map(map(number))
  default = {
    "web" = {
      cores = 2
      memory = 1
      core_fraction = 5
    }
    "db" = {
      cores = 2
      memory = 1
      core_fraction = 5
    }
  }
}


