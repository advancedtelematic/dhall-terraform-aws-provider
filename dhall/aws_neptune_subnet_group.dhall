
let AwsNeptuneSubnetGroupOptional =
  { arn: Optional Text
  , description: Optional Text
  , name: Optional Text
  , name_prefix: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsNeptuneSubnetGroupRequired =
  { subnet_ids: (List Text) }
let AwsNeptuneSubnetGroup = AwsNeptuneSubnetGroupOptional //\\ AwsNeptuneSubnetGroupRequired

in
{ AwsNeptuneSubnetGroupOptional = AwsNeptuneSubnetGroupOptional
, AwsNeptuneSubnetGroupRequired = AwsNeptuneSubnetGroupRequired
, AwsNeptuneSubnetGroup = AwsNeptuneSubnetGroup
}
