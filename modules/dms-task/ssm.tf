resource "aws_ssm_parameter" "pgflx_db_username" {
  name        = "/rds/database/username"
  description = "RDS Database username"
  type        = "SecureString"
  value       = var.db_username_value
}

resource "aws_ssm_parameter" "pgflx_db_password" {
  name        = "/rds/database/password"
  description = "Database password"
  type        = "SecureString"
  value       = var.db_password_value
}
