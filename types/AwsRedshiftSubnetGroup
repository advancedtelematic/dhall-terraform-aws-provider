
let AwsRedshiftSubnetGroupOptional =
  { description : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsRedshiftSubnetGroupRequired =
  { name : Text
  , subnet_ids : (List Text)
  }
let AwsRedshiftSubnetGroup = AwsRedshiftSubnetGroupOptional //\\ AwsRedshiftSubnetGroupRequired

in
{ AwsRedshiftSubnetGroupOptional = AwsRedshiftSubnetGroupOptional
, AwsRedshiftSubnetGroupRequired = AwsRedshiftSubnetGroupRequired
, AwsRedshiftSubnetGroup = AwsRedshiftSubnetGroup
}
