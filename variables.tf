/* azure Credentials for Terraform */
variable "subscription_id" {}
variable "tenant_id" {}
variable "client_id" {}
variable "client_secret" {}

/* Project, environment, location */
locals {
  storage_account_name = "${var.dns_prefix}${var.project}${substr(var.environment, 0, 3)}"
}

variable "environment" {
  default = "dev"
}

variable "dns_prefix" {
  default = "fan"
}

variable "project" {
  default = "staticwebsite"
}

variable "location" {
  default = "East US"
}

/* Resources */

variable "resource_group_name" {
  description = "resource group of the resources."
  default = "RG-Fan-eastus-20200214"
}


