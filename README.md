# dhall-terraform-aws-provider

Generate dhall bindings for the terraform aws provider, using [tfschema](https://github.com/minamijoyo/tfschema) to provide the schema.

Hopefully that will result in some more complete dhall terraform bindings that can be kept up to date, but until then here's some I made earlier: https://github.com/advancedtelematic/ota-staging-cn

## Terraform bindings

In the `/dhall` dir you'll find the terraform types for aws resources. So far it's just `aws_instance`, but you can take a look at the normalized dhall types with the following:

```
dhall normalize < dhall/aws_instance.dhall
```

## Usage

`make generate-schema` creates the terraform json schema in the `./schema` dir.

`make generate-dhall` creates the `.dhall` files in the `./dhall` dir.
