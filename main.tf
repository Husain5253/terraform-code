

module "pgflx_replication_instance" {

  source = "./modules/dms-task"

  allocated_storage           		       = "${var.allocated_storage}"
  engine_version	       		       = "${var.engine_version}"
  db_username_value                            = "${var.db_username_value}"
  db_password_value                            = "${var.db_password_value}"
  source_db_server_name                        = "${var.source_db_server_name}"
  target_db_server_name        		       = "${var.target_db_server_name}"
  publicly_accessible         		       = "${var.publicly_accessible}"
  pgflx_broadridgecm_db_name                   = "${var.pgflx_broadridgecm_db_name}"
  pgflx_broadridgecm_source_endpoint_id        = "${var.pgflx_broadridgecm_source_endpoint_id}"
  pgflx_broadridgecm_target_endpoint_id        = "${var.pgflx_broadridgecm_target_endpoint_id}"
  pgflx_icmacm_db_name                         = "${var.pgflx_icmacm_db_name}"
  pgflx_icmacm_source_endpoint_id              = "${var.pgflx_icmacm_source_endpoint_id}"
  pgflx_icmacm_target_endpoint_id              = "${var.pgflx_icmacm_target_endpoint_id}"
  pgflx_epwcmdb_db_name                        = "${var.pgflx_epwcmdb_db_name}"
  pgflx_epwcmdb_source_endpoint_id             = "${var.pgflx_epwcmdb_source_endpoint_id}"
  pgflx_epwcmdb_target_endpoint_id             = "${var.pgflx_epwcmdb_target_endpoint_id}"
  pgflx_voyacm_db_name                         = "${var.pgflx_voyacm_db_name}"
  pgflx_voyacm_source_endpoint_id              = "${var.pgflx_voyacm_source_endpoint_id}"
  pgflx_voyacm_target_endpoint_id              = "${var.pgflx_voyacm_target_endpoint_id}"
  replication_task_settings                    = file("config/replication-task-settings.json") 
  table_mappings                               = file("config/replication-task-table-mappings.json")
  lambda_function_filename                     = "${var.lambda_function_filename}"
  lambda_function_runtime                      = "${var.lambda_function_runtime}"
  lambda_function_timeout                      = "${var.lambda_function_timeout}"
  schedule_expression                          = "${var.schedule_expression}"
  pgflx_lambda_statement_id                    = "${var.pgflx_lambda_statement_id}"
  pgflx_lambda_principal                       = "${var.pgflx_lambda_principal}"
  pgflx_lambda_action                          = "${var.pgflx_lambda_action}"

}
