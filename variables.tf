variable "environment" {
  type        = string
  description = "the env type"
  default     = "staging"
}

variable "storage-disk" {
  type = number
  description = " the storage disk size"
  default = 80
}

variable "is_delete" {
  type = bool
  description = "the default behavior to os disk upon vm termination"
  default = true
}

variable "allowed_locations" {
  type = list(string)
  description = "the default allowed locations"
  default = ["West Europe", "North Europe" , "East US" ]
}

variable "resource_tags" {
  type = map(string)
  description = "tags to apply resources"
  default = {
    "environment" = "staging"
    "managed_by" = "terraform"
    "department" = "devops"
  }
}

variable "network_config" {
  type = tuple([string,string, number])
  description = "Network configuration (VNET address, subnet address, subnet mask)"
  default = ["10.0.0.0/16", "10.0.2.0", 24]
}


variable "allowed_vm_size" {
  type = list(string)
  description = "Allowed VM sizes"
  default = ["Standard_B1s", "Standard_B1ms", "Standard_D2s_v3"]
}

variable "vm_config" {
  type = object({
    size         = string
    publisher    = string
    offer        = string
    sku          = string
    version      = string
  })
  description = " Vm config"
  default = {
    size         = "Standard_DS1_v2"
    publisher    = "Canonical"
    offer        = "0001-com-ubuntu-server-jammy"
    sku          = "22_04-lts"
    version      = "latest"
  }
}