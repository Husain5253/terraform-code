resource "aws_dms_replication_task" "pgflx_broadridge_dms_task" {

  replication_task_id       = "pgflx-broadridgcm-dms-task"
  migration_type            = var.migration_type
  replication_instance_arn  = aws_dms_replication_instance.pgflx_replication_instance.replication_instance_arn
  source_endpoint_arn       = aws_dms_endpoint.pgflx_broadridgecm_source_endpoint.endpoint_arn
  target_endpoint_arn       = aws_dms_endpoint.pgflx_broadridgecm_target_endpoint.endpoint_arn
  table_mappings            = var.table_mappings
  replication_task_settings = var.replication_task_settings
}

resource "aws_dms_replication_task" "pgflx_epwcmdb_dms_task" {

  replication_task_id       = "pgflx-epwcmdb-dms-task"
  migration_type            = var.migration_type
  replication_instance_arn  = aws_dms_replication_instance.pgflx_replication_instance.replication_instance_arn
  source_endpoint_arn       = aws_dms_endpoint.pgflx_epwcmdb_source_endpoint.endpoint_arn
  target_endpoint_arn       = aws_dms_endpoint.pgflx_epwcmdb_target_endpoint.endpoint_arn
  table_mappings            = var.table_mappings
  replication_task_settings = var.replication_task_settings
}

resource "aws_dms_replication_task" "pgflx_icmacm_dms_task" {

  replication_task_id       = "pgflx-icmacm-dms-task"
  migration_type            = var.migration_type
  replication_instance_arn  = aws_dms_replication_instance.pgflx_replication_instance.replication_instance_arn
  source_endpoint_arn       = aws_dms_endpoint.pgflx_icmacm_source_endpoint.endpoint_arn
  target_endpoint_arn       = aws_dms_endpoint.pgflx_icmacm_target_endpoint.endpoint_arn
  table_mappings            = var.table_mappings
  replication_task_settings = var.replication_task_settings
}

resource "aws_dms_replication_task" "pgflx_voyacm_dms_task" {

  replication_task_id       = "pgflx-voyacm-dms-task"
  migration_type            = var.migration_type
  replication_instance_arn  = aws_dms_replication_instance.pgflx_replication_instance.replication_instance_arn
  source_endpoint_arn       = aws_dms_endpoint.pgflx_voyacm_source_endpoint.endpoint_arn
  target_endpoint_arn       = aws_dms_endpoint.pgflx_voyacm_target_endpoint.endpoint_arn
  table_mappings            = var.table_mappings
  replication_task_settings = var.replication_task_settings
}
