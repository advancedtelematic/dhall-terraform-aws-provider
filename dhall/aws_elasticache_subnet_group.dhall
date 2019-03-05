
let AwsElasticacheSubnetGroupOptional =
  { description: Optional Text }

let AwsElasticacheSubnetGroupRequired =
  { name: Text
  , subnet_ids: (List Text)
  }
let AwsElasticacheSubnetGroup = AwsElasticacheSubnetGroupOptional //\\ AwsElasticacheSubnetGroupRequired

in
{ AwsElasticacheSubnetGroupOptional = AwsElasticacheSubnetGroupOptional
, AwsElasticacheSubnetGroupRequired = AwsElasticacheSubnetGroupRequired
, AwsElasticacheSubnetGroup = AwsElasticacheSubnetGroup
}
