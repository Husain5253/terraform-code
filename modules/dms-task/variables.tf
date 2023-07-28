variable "allocated_storage" {
  description = "the storage of DMS replication instance"
}

variable "apply_immediately" {
  default     = "true"
}

variable "auto_minor_version_upgrade" {
  default     = "true"
}

variable "engine_version" {
  description = "the engine version of DMS replication instance"
  default     = ""
}

variable "multi_az" {
  description = "multi az of DMS replication instance"
  default     = "false"
}


variable "publicly_accessible" {
}

variable "replication_instance_class" {
  description = "the DMS replication instance class"
  default     = "dms.c5.xlarge"
}

variable "replication_instance_id" {
  description = "the DMS replication instance id"
  default     = "pgflx-replication-instance"
}


variable "db_username_value" {
  description = "username for the master DB user"
}


variable "db_password_value" {
  description = "password for the master DB use"
}

variable "port" {
  description = "The port on which the DB accepts connections."
  default     = "1433"
}

variable "source_db_server_name" {
  description = "Source server database name"
}

variable "target_db_server_name" {
  description = "Target server database name"
}


variable "ssl_mode" {
  description = "DB ssl mode"
  default     = "none"
}


variable "engine_name" {
  description = "Database engine name"
  default     = "mysql"
}


variable "source_endpoint_type" {
  description = "Database source endpoint type"
  default     = "source"
}


variable "target_endpoint_type" {
  description = "Database target enpoint type"
  default     = "target"
}


variable "pgflx_broadridgecm_db_name" {
  description = "Broadrigecm RDS Database name"
  default     = ""
}

variable "pgflx_broadridgecm_source_endpoint_id" {
  description = "Broadrigecm source endpoint id"
  default     = ""
}

variable "pgflx_broadridgecm_target_endpoint_id" {
  description = "Broadrigecm target endpoint id"
  default     = ""
}



variable "pgflx_icmacm_db_name" {
  description = "ICMACM RDS Database name"
  default     = ""
}

variable "pgflx_icmacm_source_endpoint_id" {
  description = "ICMACM source endpoint id"
  default     = ""
}

variable "pgflx_icmacm_target_endpoint_id" {
  description = "ICMACM target endpoint id"
  default     = ""
}



variable "pgflx_epwcmdb_db_name" {
  description = "EPWCMDB RDS Database name"
  default     = ""
}

variable "pgflx_epwcmdb_source_endpoint_id" {
  description = "Broadrigecm source endpoint id"
  default     = ""
}


variable "pgflx_epwcmdb_target_endpoint_id" {
  description = "Broadrigecm target endpoint id"
  default     = ""
}

variable "pgflx_voyacm_db_name" {
  description = "VOYACM RDS Database name"
  default     = ""
}

variable "pgflx_voyacm_source_endpoint_id" {
  description = "VOYACM source endpoint id"
  default     = ""
}


variable "pgflx_voyacm_target_endpoint_id" {
  description = "VOYACM target endpoint id"
  default     = ""
}

variable "migration_type" {
  default     = "full-load"
}

variable "table_mappings" {
  default     = ""
}

variable "replication_task_settings" {
  default     = ""
}

variable "lambda_function_filename" {
  description = "lambda function file name"
  default     = ""
}

variable "lambda_function_runtime" {
  description = "lambda function runtime"
  default     = ""
}

variable "lambda_function_handler" {
  description = "lambda function handler"
  default     = "lambda_function.lambda_handler"
}

variable "lambda_function_timeout" {
  description = "lambda function timeout"
  default     = ""
}

variable "pgflx_lambda_action" {
  description = "lambda permission action"
  default     = ""
}

variable "pgflx_lambda_principal" {
  description = "lambda permission principal"
  default     = ""
}

variable "pgflx_lambda_statement_id" {
  description = "lambda permission statement id"
  default     = ""
}

variable "schedule_expression" {
  description = "cloudwatch lambda function schedule expression"
  default     = ""
}
