
let AwsElasticacheSecurityGroupOptional =
  { description: Optional Text }

let AwsElasticacheSecurityGroupRequired =
  { name: Text
  , security_group_names: (List Text)
  }
let AwsElasticacheSecurityGroup = AwsElasticacheSecurityGroupOptional //\\ AwsElasticacheSecurityGroupRequired

in
{ AwsElasticacheSecurityGroupOptional = AwsElasticacheSecurityGroupOptional
, AwsElasticacheSecurityGroupRequired = AwsElasticacheSecurityGroupRequired
, AwsElasticacheSecurityGroup = AwsElasticacheSecurityGroup
}
