# dhall-terraform-aws-provider

Note: Experimental, alhpa code.

Generate dhall bindings for the terraform aws provider, using [tfschema](https://github.com/minamijoyo/tfschema) to provide the schema.

## Terraform bindings

In the `/dhall` dir you'll find the terraform types for aws resources. Each dhall file exports a records of all the types it makes to create an aws resource. Those resources in made by merging their optional and required fields. Take the `aws_nat_gateway` as an example.

```bash
dhall normalize < dhall/aws_nat_gateway.dhall
```

```haskell
{ AwsNatGateway =
    { allocation_id :
        Text
    , network_interface_id :
        Optional Text
    , private_ip :
        Optional Text
    , public_ip :
        Optional Text
    , subnet_id :
        Text
    , tags :
        Optional (List { mapKey : Text, mapValue : Text })
    }
, AwsNatGatewayOptional =
    { network_interface_id :
        Optional Text
    , private_ip :
        Optional Text
    , public_ip :
        Optional Text
    , tags :
        Optional (List { mapKey : Text, mapValue : Text })
    }
, AwsNatGatewayRequired =
    { allocation_id : Text, subnet_id : Text }
}
```

## Using the generators

`make generate-schema` creates the terraform json schema in the `./schema` dir.

`make generate-dhall` creates the `.dhall` files in the `./dhall` dir.

## License

This code is licensed under the Mozilla Public License 2.0, a copy of which can be found in this repository. All code is copyright 2018 HERE Europe B.V.
