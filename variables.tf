variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "location" {
  description = "Resource group region."
  type        = string
}

variable "tags" {
  description = "Resource group tags."
  type        = map(string)
}

variable "lock_level" {
  description = "Lock level of the rg. Possible values are Empty (no lock), CanNotDelete and ReadOnly."
  type        = string
  default     = ""
}
