variable "domain_name" {
  type        = string
}

variable "agency_name" {
  type        = string
  default     = "OrganizationAccountAccessAgency"
}

variable "region" {
  type        = string
  default     = "sa-brazil-1"
}

variable "bucket_name" {
  type        = string
  default     = "{$CONFIG_BUCKET_NAME}"
}
