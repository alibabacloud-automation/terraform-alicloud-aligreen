# Business type configuration
variable "create_biz_type" {
  description = "Whether to create a new Aligreen business type."
  type        = bool
  default     = false
}

variable "biz_type_config" {
  description = "The configuration of Aligreen business type. Required when create_biz_type is true."
  type = object({
    biz_type_name = string
    cite_template = optional(bool, false)
    description   = optional(string, "Business type created by Terraform")
    industry_info = optional(string, "default")
  })
  default = null
}

# Callback configuration
variable "create_callback" {
  description = "Whether to create a new Aligreen callback configuration."
  type        = bool
  default     = false
}

variable "callback_config" {
  description = "The configuration of Aligreen callback. Required when create_callback is true."
  type = object({
    callback_name        = string
    callback_url         = string
    callback_types       = list(string)
    callback_suggestions = optional(list(string), ["block", "review", "pass"])
    crypt_type           = optional(number, 0)
  })
  default = null
}

# Keyword library configuration
variable "create_keyword_lib" {
  description = "Whether to create a new Aligreen keyword library."
  type        = bool
  default     = false
}

variable "keyword_lib_config" {
  description = "The configuration of Aligreen keyword library. Required when create_keyword_lib is true."
  type = object({
    keyword_lib_name = string
    resource_type    = optional(string, "TEXT")
    lib_type         = optional(string, "textKeyword")
    category         = optional(string, "BLACK")
    language         = optional(string, "cn")
    match_mode       = optional(string, "fuzzy")
    enable           = optional(bool, true)
  })
  default = null
}

# Image library configuration
variable "create_image_lib" {
  description = "Whether to create a new Aligreen image library."
  type        = bool
  default     = false
}

variable "image_lib_config" {
  description = "The configuration of Aligreen image library. Required when create_image_lib is true."
  type = object({
    image_lib_name = string
    category       = optional(string, "BLACK")
    scene          = optional(string, "PORN")
    enable         = optional(bool, true)
  })
  default = null
}