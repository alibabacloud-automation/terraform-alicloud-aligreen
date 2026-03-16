阿里云内容安全 Terraform 模块

# terraform-alicloud-aligreen

[English](https://github.com/alibabacloud-automation/terraform-alicloud-aligreen/blob/main/README.md) | 简体中文

用于创建阿里云内容安全（Aligreen）资源的 Terraform 模块，提供内容审核功能。该模块提供内容安全能力，包括业务类型配置、回调管理、关键词过滤和图片库，基于 [阿里云内容安全](https://www.alibabacloud.com/product/content-security) 解决方案，帮助企业实现自动化的内容审核系统。

## 使用方法

该模块可用于创建内容安全设置，并支持根据需求自定义组件。您可以根据需要启用或禁用不同的功能。

```terraform
module "aligreen" {
  source = "alibabacloud-automation/aligreen/alicloud"

  # 启用必需的组件
  create_biz_type    = true
  create_callback    = true
  create_keyword_lib = true
  create_image_lib   = true

  # 业务类型配置
  biz_type_config = {
    biz_type_name = "default"
    description   = "社交媒体内容审核"
  }

  # 回调配置
  callback_config = {
    callback_name  = "my_callback"
    callback_url   = "https://example.com/callback"
    callback_types = ["machineScan", "selfAudit"]
  }

  # 关键词库配置
  keyword_lib_config = {
    keyword_lib_name = "my_keyword_lib"
  }

  # 图片库配置
  image_lib_config = {
    image_lib_name = "my_image_lib"
  }
}
```

## 示例

* [完整示例](https://github.com/alibabacloud-automation/terraform-alicloud-aligreen/tree/main/examples/complete)

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.210.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | >= 1.210.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [alicloud_aligreen_biz_type.biz_type](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/aligreen_biz_type) | resource |
| [alicloud_aligreen_callback.callback](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/aligreen_callback) | resource |
| [alicloud_aligreen_image_lib.image_lib](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/aligreen_image_lib) | resource |
| [alicloud_aligreen_keyword_lib.keyword_lib](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/aligreen_keyword_lib) | resource |
| [alicloud_account.current](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/data-sources/account) | data source |
| [alicloud_regions.current](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/data-sources/regions) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_biz_type_config"></a> [biz\_type\_config](#input\_biz\_type\_config) | The configuration of Aligreen business type. Required when create\_biz\_type is true. | <pre>object({<br/>    biz_type_name = string<br/>    cite_template = optional(bool, false)<br/>    description   = optional(string, "Business type created by Terraform")<br/>    industry_info = optional(string, "default")<br/>  })</pre> | `null` | no |
| <a name="input_callback_config"></a> [callback\_config](#input\_callback\_config) | The configuration of Aligreen callback. Required when create\_callback is true. | <pre>object({<br/>    callback_name        = string<br/>    callback_url         = string<br/>    callback_types       = list(string)<br/>    callback_suggestions = optional(list(string), ["block", "review", "pass"])<br/>    crypt_type           = optional(number, 0)<br/>  })</pre> | `null` | no |
| <a name="input_create_biz_type"></a> [create\_biz\_type](#input\_create\_biz\_type) | Whether to create a new Aligreen business type. | `bool` | `false` | no |
| <a name="input_create_callback"></a> [create\_callback](#input\_create\_callback) | Whether to create a new Aligreen callback configuration. | `bool` | `false` | no |
| <a name="input_create_image_lib"></a> [create\_image\_lib](#input\_create\_image\_lib) | Whether to create a new Aligreen image library. | `bool` | `false` | no |
| <a name="input_create_keyword_lib"></a> [create\_keyword\_lib](#input\_create\_keyword\_lib) | Whether to create a new Aligreen keyword library. | `bool` | `false` | no |
| <a name="input_image_lib_config"></a> [image\_lib\_config](#input\_image\_lib\_config) | The configuration of Aligreen image library. Required when create\_image\_lib is true. | <pre>object({<br/>    image_lib_name = string<br/>    category       = optional(string, "BLACK")<br/>    scene          = optional(string, "PORN")<br/>    enable         = optional(bool, true)<br/>  })</pre> | `null` | no |
| <a name="input_keyword_lib_config"></a> [keyword\_lib\_config](#input\_keyword\_lib\_config) | The configuration of Aligreen keyword library. Required when create\_keyword\_lib is true. | <pre>object({<br/>    keyword_lib_name = string<br/>    resource_type    = optional(string, "TEXT")<br/>    lib_type         = optional(string, "textKeyword")<br/>    category         = optional(string, "BLACK")<br/>    language         = optional(string, "cn")<br/>    match_mode       = optional(string, "fuzzy")<br/>    enable           = optional(bool, true)<br/>  })</pre> | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_account_id"></a> [account\_id](#output\_account\_id) | The ID of the current account |
| <a name="output_biz_type_id"></a> [biz\_type\_id](#output\_biz\_type\_id) | The ID of the Aligreen business type |
| <a name="output_biz_type_name"></a> [biz\_type\_name](#output\_biz\_type\_name) | The name of the Aligreen business type |
| <a name="output_callback_id"></a> [callback\_id](#output\_callback\_id) | The ID of the Aligreen callback configuration |
| <a name="output_callback_name"></a> [callback\_name](#output\_callback\_name) | The name of the Aligreen callback configuration |
| <a name="output_callback_url"></a> [callback\_url](#output\_callback\_url) | The URL of the Aligreen callback configuration |
| <a name="output_image_lib_id"></a> [image\_lib\_id](#output\_image\_lib\_id) | The ID of the Aligreen image library |
| <a name="output_image_lib_name"></a> [image\_lib\_name](#output\_image\_lib\_name) | The name of the Aligreen image library |
| <a name="output_keyword_lib_id"></a> [keyword\_lib\_id](#output\_keyword\_lib\_id) | The ID of the Aligreen keyword library |
| <a name="output_keyword_lib_name"></a> [keyword\_lib\_name](#output\_keyword\_lib\_name) | The name of the Aligreen keyword library |
| <a name="output_region_id"></a> [region\_id](#output\_region\_id) | The ID of the current region |
<!-- END_TF_DOCS -->

## 提交问题

如果您在使用此模块时遇到任何问题，请提交一个 [provider issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new) 并告知我们。

**注意：** 不建议在此仓库中提交问题。

## 作者

由阿里云 Terraform 团队创建和维护 (terraform@alibabacloud.com)。

## 许可证

MIT 许可。有关完整详细信息，请参阅 LICENSE。

## 参考

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)
