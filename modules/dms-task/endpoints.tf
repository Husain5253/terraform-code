
resource "aws_dms_endpoint" "pgflx_broadridgecm_source_endpoint" {
  database_name               = var.pgflx_broadridgecm_db_name
  endpoint_id                 = var.pgflx_broadridgecm_source_endpoint_id
  endpoint_type               = var.source_endpoint_type
  engine_name                 = var.engine_name
  username                    = aws_ssm_parameter.pgflx_db_username.value
  password                    = aws_ssm_parameter.pgflx_db_password.value
  port                        = var.port
  server_name                 = var.source_db_server_name
  ssl_mode                    = var.ssl_mode
}


resource "aws_dms_endpoint" "pgflx_icmacm_source_endpoint" {
  database_name               = var.pgflx_icmacm_db_name
  endpoint_id                 = var.pgflx_icmacm_source_endpoint_id
  endpoint_type               = var.source_endpoint_type
  engine_name                 = var.engine_name
  username                    = aws_ssm_parameter.pgflx_db_username.value
  password                    = aws_ssm_parameter.pgflx_db_password.value
  port                        = var.port
  server_name                 = var.source_db_server_name
  ssl_mode                    = var.ssl_mode
}

resource "aws_dms_endpoint" "pgflx_epwcmdb_source_endpoint" {
  database_name               = var.pgflx_epwcmdb_db_name
  endpoint_id                 = var.pgflx_epwcmdb_source_endpoint_id
  endpoint_type               = var.source_endpoint_type
  engine_name                 = var.engine_name
  username                    = aws_ssm_parameter.pgflx_db_username.value
  password                    = aws_ssm_parameter.pgflx_db_password.value
  port                        = var.port
  server_name                 = var.source_db_server_name
  ssl_mode                    = var.ssl_mode
}


resource "aws_dms_endpoint" "pgflx_voyacm_source_endpoint" {
  database_name               = var.pgflx_voyacm_db_name
  endpoint_id                 = var.pgflx_voyacm_source_endpoint_id
  endpoint_type               = var.source_endpoint_type
  engine_name                 = var.engine_name
  username                    = aws_ssm_parameter.pgflx_db_username.value
  password                    = aws_ssm_parameter.pgflx_db_password.value
  port                        = var.port
  server_name                 = var.source_db_server_name
  ssl_mode                    = var.ssl_mode
}

resource "aws_dms_endpoint" "pgflx_broadridgecm_target_endpoint" {
  database_name               = var.pgflx_broadridgecm_db_name
  endpoint_id                 = var.pgflx_broadridgecm_target_endpoint_id
  endpoint_type               = var.target_endpoint_type
  engine_name                 = var.engine_name
  username                    = aws_ssm_parameter.pgflx_db_username.value
  password                    = aws_ssm_parameter.pgflx_db_password.value
  port                        = var.port
  server_name                 = var.target_db_server_name
  ssl_mode                    = var.ssl_mode
}

resource "aws_dms_endpoint" "pgflx_icmacm_target_endpoint" {
  database_name               = var.pgflx_icmacm_db_name
  endpoint_id                 = var.pgflx_icmacm_target_endpoint_id
  endpoint_type               = var.target_endpoint_type
  engine_name                 = var.engine_name
  username                    = aws_ssm_parameter.pgflx_db_username.value
  password                    = aws_ssm_parameter.pgflx_db_password.value
  port                        = var.port
  server_name                 = var.target_db_server_name
  ssl_mode                    = var.ssl_mode
}

resource "aws_dms_endpoint" "pgflx_epwcmdb_target_endpoint" {
  database_name               = var.pgflx_epwcmdb_db_name
  endpoint_id                 = var.pgflx_epwcmdb_target_endpoint_id
  endpoint_type               = var.target_endpoint_type
  engine_name                 = var.engine_name
  username                    = aws_ssm_parameter.pgflx_db_username.value
  password                    = aws_ssm_parameter.pgflx_db_password.value
  port                        = var.port
  server_name                 = var.target_db_server_name
  ssl_mode                    = var.ssl_mode
}


resource "aws_dms_endpoint" "pgflx_voyacm_target_endpoint" {
  database_name               = var.pgflx_voyacm_db_name
  endpoint_id                 = var.pgflx_voyacm_target_endpoint_id
  endpoint_type               = var.target_endpoint_type
  engine_name                 = var.engine_name
  username                    = aws_ssm_parameter.pgflx_db_username.value
  password                    = aws_ssm_parameter.pgflx_db_password.value
  port                        = var.port
  server_name                 = var.target_db_server_name
  ssl_mode                    = var.ssl_mode
}
