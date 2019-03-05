
let AwsRamResourceShareOptional =
  { allow_external_principals: Optional Bool
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsRamResourceShareRequired =
  { name: Text }
let AwsRamResourceShare = AwsRamResourceShareOptional //\\ AwsRamResourceShareRequired

in
{ AwsRamResourceShareOptional = AwsRamResourceShareOptional
, AwsRamResourceShareRequired = AwsRamResourceShareRequired
, AwsRamResourceShare = AwsRamResourceShare
}
