variable "tenant_id" {}
variable "client_id" {}
variable "client_secret" {}

variable "trusted_location_ids" {
  type = list(string)
  default = []
}

