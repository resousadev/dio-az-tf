variable "location" {
  description = "The Azure location where the resources will be created."
  type        = string
  default     = "West US 2"
}

variable "sql_admin_username" {
  description = "The administrator username for the SQL server."
  type        = string
  default     = "username"
}

variable "sql_admin_password" {
  description = "The administrator password for the SQL server."
  type        = string
  default     = "password"
}

variable "sql_server_name" {
  description = "The name of the SQL server."
  type        = string
  default     = "lab-sql-server-dio-az"
}

variable "sql_database_name" {
  description = "The name of the SQL database."
  type        = string
  default     = "lab-sql-database"
}

variable "sql_server_version" {
  description = "The version of the SQL server."
  type        = string
  default     = "12.0"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
  default     = "labstorageaccountdio"
}