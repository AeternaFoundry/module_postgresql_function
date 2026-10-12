output "functions_id" {
  description = "Map of id values across all functions, keyed the same as var.functions except keys with no id are omitted"
  value       = { for k, v in postgresql_function.functions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "functions_arg" {
  description = "Map of arg values across all functions, keyed the same as var.functions except keys with no arg are omitted"
  value       = { for k, v in postgresql_function.functions : k => v.arg if v.arg != null && length(v.arg) > 0 }
}
output "functions_body" {
  description = "Map of body values across all functions, keyed the same as var.functions except keys with no body are omitted"
  value       = { for k, v in postgresql_function.functions : k => v.body if v.body != null && length(v.body) > 0 }
}
output "functions_database" {
  description = "Map of database values across all functions, keyed the same as var.functions except keys with no database are omitted"
  value       = { for k, v in postgresql_function.functions : k => v.database if v.database != null && length(v.database) > 0 }
}
output "functions_drop_cascade" {
  description = "Map of drop_cascade values across all functions, keyed the same as var.functions except keys with no drop_cascade are omitted"
  value       = { for k, v in postgresql_function.functions : k => v.drop_cascade if v.drop_cascade != null }
}
output "functions_language" {
  description = "Map of language values across all functions, keyed the same as var.functions except keys with no language are omitted"
  value       = { for k, v in postgresql_function.functions : k => v.language if v.language != null && length(v.language) > 0 }
}
output "functions_name" {
  description = "Map of name values across all functions, keyed the same as var.functions except keys with no name are omitted"
  value       = { for k, v in postgresql_function.functions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "functions_parallel" {
  description = "Map of parallel values across all functions, keyed the same as var.functions except keys with no parallel are omitted"
  value       = { for k, v in postgresql_function.functions : k => v.parallel if v.parallel != null && length(v.parallel) > 0 }
}
output "functions_returns" {
  description = "Map of returns values across all functions, keyed the same as var.functions except keys with no returns are omitted"
  value       = { for k, v in postgresql_function.functions : k => v.returns if v.returns != null && length(v.returns) > 0 }
}
output "functions_schema" {
  description = "Map of schema values across all functions, keyed the same as var.functions except keys with no schema are omitted"
  value       = { for k, v in postgresql_function.functions : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "functions_security_definer" {
  description = "Map of security_definer values across all functions, keyed the same as var.functions except keys with no security_definer are omitted"
  value       = { for k, v in postgresql_function.functions : k => v.security_definer if v.security_definer != null }
}
output "functions_strict" {
  description = "Map of strict values across all functions, keyed the same as var.functions except keys with no strict are omitted"
  value       = { for k, v in postgresql_function.functions : k => v.strict if v.strict != null }
}
output "functions_volatility" {
  description = "Map of volatility values across all functions, keyed the same as var.functions except keys with no volatility are omitted"
  value       = { for k, v in postgresql_function.functions : k => v.volatility if v.volatility != null && length(v.volatility) > 0 }
}

