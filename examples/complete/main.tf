# Configure the Alicloud Provider
provider "alicloud" {
  region = var.region
}

# Create Aligreen resources using the module
module "aligreen" {
  source = "../../"

  # Enable resources creation
  create_biz_type    = true
  create_callback    = true
  create_keyword_lib = true
  create_image_lib   = true

  # Business type configuration
  biz_type_config = {
    biz_type_name = "default"
    cite_template = false
    description   = "Default business type for content moderation"
    industry_info = "default"
  }

  # Callback configuration
  callback_config = {
    callback_name        = "example_callback"
    callback_url         = "https://example.com/callback"
    callback_types       = ["machineScan", "selfAudit"]
    callback_suggestions = ["block", "review", "pass"]
    crypt_type           = 0
  }

  # Keyword library configuration
  keyword_lib_config = {
    keyword_lib_name = "example_keyword_lib"
    resource_type    = "TEXT"
    lib_type         = "textKeyword"
    category         = "BLACK"
    language         = "cn"
    match_mode       = "fuzzy"
    enable           = true
  }

  # Image library configuration
  image_lib_config = {
    image_lib_name = "example_image_lib"
    category       = "BLACK"
    scene          = "PORN"
    enable         = true
  }
}