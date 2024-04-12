resource "aws_dynamodb_table" "dynamodb_table" {
  name         = var.config["db_table_name"]
  hash_key     = var.config["hash_key"]
  billing_mode = var.config["billing_mode"]
  attribute {
    name = var.config["attribute_name"]
    type = var.config["attribute_type"]
  }
}