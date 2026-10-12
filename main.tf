resource "postgresql_function" "functions" {
  for_each = var.functions

  body             = each.value.body
  name             = each.value.name
  database         = each.value.database
  drop_cascade     = each.value.drop_cascade
  language         = each.value.language
  parallel         = each.value.parallel
  returns          = each.value.returns
  schema           = each.value.schema
  security_definer = each.value.security_definer
  strict           = each.value.strict
  volatility       = each.value.volatility

  dynamic "arg" {
    for_each = each.value.arg != null ? each.value.arg : []
    content {
      default = arg.value.default
      mode    = arg.value.mode
      name    = arg.value.name
      type    = arg.value.type
    }
  }
}

