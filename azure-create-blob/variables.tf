variable "location" {
  description = "indicator variable where resources are created"
  type        = string
  default     = "Brazil South"
}

variable "account_tier" {
  description = "Azures storage account tier"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Storage Account replication data"
  type        = string
  default     = "LRS"
}
