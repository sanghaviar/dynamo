locals {
  data    = jsondecode(file("${path.module}/config/config.json"))
}
module "dynamo_db" {
  source = "./modules/dynamodb"
  for_each      = {for entry in local.data["dynamo_db"] : entry["db_table_name"] => entry}
  config = each.value
}