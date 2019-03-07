
let AwsDbSubnetGroupOptional =
  { description: Optional Text
  , name: Optional Text
  , name_prefix: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsDbSubnetGroupRequired =
  { subnet_ids: (List Text) }
let AwsDbSubnetGroup = AwsDbSubnetGroupOptional //\\ AwsDbSubnetGroupRequired

in
{ AwsDbSubnetGroupOptional = AwsDbSubnetGroupOptional
, AwsDbSubnetGroupRequired = AwsDbSubnetGroupRequired
, AwsDbSubnetGroup = AwsDbSubnetGroup
}
