# Business type outputs
output "biz_type_id" {
  description = "The ID of the created business type"
  value       = module.aligreen.biz_type_id
}

output "biz_type_name" {
  description = "The name of the created business type"
  value       = module.aligreen.biz_type_name
}

# Callback outputs
output "callback_id" {
  description = "The ID of the created callback configuration"
  value       = module.aligreen.callback_id
}

output "callback_name" {
  description = "The name of the created callback configuration"
  value       = module.aligreen.callback_name
}

# Keyword library outputs
output "keyword_lib_id" {
  description = "The ID of the created keyword library"
  value       = module.aligreen.keyword_lib_id
}

output "keyword_lib_name" {
  description = "The name of the created keyword library"
  value       = module.aligreen.keyword_lib_name
}

# Image library outputs
output "image_lib_id" {
  description = "The ID of the created image library"
  value       = module.aligreen.image_lib_id
}

output "image_lib_name" {
  description = "The name of the created image library"
  value       = module.aligreen.image_lib_name
}

# Common outputs
output "region_id" {
  description = "The ID of the current region"
  value       = module.aligreen.region_id
}

output "account_id" {
  description = "The ID of the current account"
  value       = module.aligreen.account_id
}