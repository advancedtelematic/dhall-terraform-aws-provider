
let AwsDocdbSubnetGroupOptional =
  { arn: Optional Text
  , description: Optional Text
  , name: Optional Text
  , name_prefix: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsDocdbSubnetGroupRequired =
  { subnet_ids: (List Text) }
let AwsDocdbSubnetGroup = AwsDocdbSubnetGroupOptional //\\ AwsDocdbSubnetGroupRequired

in
{ AwsDocdbSubnetGroupOptional = AwsDocdbSubnetGroupOptional
, AwsDocdbSubnetGroupRequired = AwsDocdbSubnetGroupRequired
, AwsDocdbSubnetGroup = AwsDocdbSubnetGroup
}
