resource "aws_dms_replication_subnet_group" "pgflx_replication_subnets_group" {
  replication_subnet_group_description = "Replication Subnets Group"
  replication_subnet_group_id          = "public-subnets-group"

  subnet_ids = [
    "subnet-0e389baf31b065e35",
    "subnet-07b5055d07083c0ec",
  ]
}

data "aws_iam_role" "dms-vpc-role" {
  name = "dms-vpc-role"
}

resource "aws_dms_replication_instance" "pgflx_replication_instance" {
  allocated_storage            = var.allocated_storage
  apply_immediately            = var.apply_immediately
  auto_minor_version_upgrade   = var.auto_minor_version_upgrade
  engine_version               = var.engine_version
  multi_az                     = var.multi_az
  publicly_accessible          = var.publicly_accessible
  replication_instance_class   = var.replication_instance_class
  replication_instance_id      = var.replication_instance_id
  replication_subnet_group_id  = aws_dms_replication_subnet_group.pgflx_replication_subnets_group.id

  depends_on = [
    data.aws_iam_role.dms-vpc-role
  ]
}
