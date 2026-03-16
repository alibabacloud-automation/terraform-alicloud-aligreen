# Complete Example

This example demonstrates how to use the Aligreen module to create a comprehensive content moderation setup.

## Features

This example creates:

- **Business Type**: A custom business type for content moderation
- **Callback Configuration**: Webhook callback for receiving moderation results
- **Keyword Library**: A custom keyword library for text filtering
- **Image Library**: A library for image content moderation

## Usage

To run this example, you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which cost money. Run `terraform destroy` when you don't need these resources.

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.0 |
| alicloud | >= 1.210.0 |

## Providers

| Name | Version |
|------|---------|
| alicloud | >= 1.210.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| aligreen | ../../ | latest |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| region | The region where to deploy the resources | `string` | `"cn-hangzhou"` | no |

## Outputs

| Name | Description |
|------|-------------|
| biz_type_id | The ID of the created business type |
| biz_type_name | The name of the created business type |
| callback_id | The ID of the created callback configuration |
| callback_name | The name of the created callback configuration |
| keyword_lib_id | The ID of the created keyword library |
| keyword_lib_name | The name of the created keyword library |
| image_lib_id | The ID of the created image library |
| image_lib_name | The name of the created image library |
| region_id | The ID of the current region |
| account_id | The ID of the current account |
