variable "location" {
  description = "The Azure location where the resources will be created."
  type        = string
  default     = "West US 2"
}

variable "sql_admin_username" {
  description = "The administrator username for the SQL server."
  type        = string
  default     = "sqladmin"
}

variable "sql_admin_password" {
  description = "The administrator password for the SQL server."
  type        = string
  default     = "P@ssw0rd1234!"
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