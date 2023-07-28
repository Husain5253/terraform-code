
data "aws_iam_policy_document" "lambda_assume_role_policy"{
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]
    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "lambda_role" {
  name = "pgflx-lambda-dms-role"
  assume_role_policy = data.aws_iam_policy_document.lambda_assume_role_policy.json
}


data "archive_file" "pgflx_lambda_file" {  
  type = "zip"  
  source_file = "code/lambda_function.py" 
  output_path = "lambda_function.zip"
}

resource "aws_lambda_function" "pgflx_lambda_function" {
  function_name     = "pgflx-migration-lambda-function"
  filename          = var.lambda_function_filename
  role              = aws_iam_role.lambda_role.arn
  source_code_hash  = data.archive_file.pgflx_lambda_file.output_path
  runtime           = var.lambda_function_runtime
  handler           = var.lambda_function_handler
  timeout           = var.lambda_function_timeout
}

resource "aws_cloudwatch_event_rule" "pgflx_lambda_event_rule" {
  name 	              = "pgflx-lambda-event-rule"
  description         = "run every 2 hours"
  schedule_expression = var.schedule_expression
}

resource "aws_cloudwatch_event_target" "pgflx_lambda_target" {
  arn  = aws_lambda_function.pgflx_lambda_function.arn
  rule = aws_cloudwatch_event_rule.pgflx_lambda_event_rule.name
}

resource "aws_lambda_permission" "pgflx_lambda_permission" {
  statement_id  = var.pgflx_lambda_statement_id
  action        = var.pgflx_lambda_action
  function_name = aws_lambda_function.pgflx_lambda_function.function_name
  principal     = var.pgflx_lambda_principal
  source_arn    = aws_cloudwatch_event_rule.pgflx_lambda_event_rule.arn
}

