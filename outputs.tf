# Business type outputs
output "biz_type_id" {
  description = "The ID of the Aligreen business type"
  value       = var.create_biz_type ? alicloud_aligreen_biz_type.biz_type[0].id : null
}

output "biz_type_name" {
  description = "The name of the Aligreen business type"
  value       = var.create_biz_type ? alicloud_aligreen_biz_type.biz_type[0].biz_type_name : null
}

# Callback outputs
output "callback_id" {
  description = "The ID of the Aligreen callback configuration"
  value       = var.create_callback ? alicloud_aligreen_callback.callback[0].id : null
}

output "callback_name" {
  description = "The name of the Aligreen callback configuration"
  value       = var.create_callback ? alicloud_aligreen_callback.callback[0].callback_name : null
}

output "callback_url" {
  description = "The URL of the Aligreen callback configuration"
  value       = var.create_callback ? alicloud_aligreen_callback.callback[0].callback_url : null
}

# Keyword library outputs
output "keyword_lib_id" {
  description = "The ID of the Aligreen keyword library"
  value       = var.create_keyword_lib ? alicloud_aligreen_keyword_lib.keyword_lib[0].id : null
}

output "keyword_lib_name" {
  description = "The name of the Aligreen keyword library"
  value       = var.create_keyword_lib ? alicloud_aligreen_keyword_lib.keyword_lib[0].keyword_lib_name : null
}

# Image library outputs
output "image_lib_id" {
  description = "The ID of the Aligreen image library"
  value       = var.create_image_lib ? alicloud_aligreen_image_lib.image_lib[0].id : null
}

output "image_lib_name" {
  description = "The name of the Aligreen image library"
  value       = var.create_image_lib ? alicloud_aligreen_image_lib.image_lib[0].image_lib_name : null
}

# Common outputs
output "region_id" {
  description = "The ID of the current region"
  value       = data.alicloud_regions.current.regions[0].id
}

output "account_id" {
  description = "The ID of the current account"
  value       = data.alicloud_account.current.id
}