# Get current region information
data "alicloud_regions" "current" {
  current = true
}

# Get current account information
data "alicloud_account" "current" {}

# Aligreen business type resource
resource "alicloud_aligreen_biz_type" "biz_type" {
  count = var.create_biz_type && var.biz_type_config != null ? 1 : 0

  biz_type_name = var.biz_type_config.biz_type_name
  cite_template = var.biz_type_config.cite_template
  description   = var.biz_type_config.description
  industry_info = var.biz_type_config.industry_info
}

# Aligreen callback configuration
resource "alicloud_aligreen_callback" "callback" {
  count = var.create_callback && var.callback_config != null ? 1 : 0

  callback_name        = var.callback_config.callback_name
  callback_url         = var.callback_config.callback_url
  callback_types       = var.callback_config.callback_types
  callback_suggestions = var.callback_config.callback_suggestions
  crypt_type           = var.callback_config.crypt_type
}

# Aligreen keyword library
resource "alicloud_aligreen_keyword_lib" "keyword_lib" {
  count = var.create_keyword_lib && var.keyword_lib_config != null ? 1 : 0

  keyword_lib_name = var.keyword_lib_config.keyword_lib_name
  resource_type    = var.keyword_lib_config.resource_type
  lib_type         = var.keyword_lib_config.lib_type
  category         = var.keyword_lib_config.category
  language         = var.keyword_lib_config.language
  match_mode       = var.keyword_lib_config.match_mode
  enable           = var.keyword_lib_config.enable
}

# Aligreen image library
resource "alicloud_aligreen_image_lib" "image_lib" {
  count = var.create_image_lib && var.image_lib_config != null ? 1 : 0

  image_lib_name = var.image_lib_config.image_lib_name
  category       = var.image_lib_config.category
  scene          = var.image_lib_config.scene
  enable         = var.image_lib_config.enable
}