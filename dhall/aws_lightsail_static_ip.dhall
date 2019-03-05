
let AwsLightsailStaticIpOptional =
  { arn: Optional Text
  , ip_address: Optional Text
  , support_code: Optional Text
  }

let AwsLightsailStaticIpRequired =
  { name: Text }
let AwsLightsailStaticIp = AwsLightsailStaticIpOptional //\\ AwsLightsailStaticIpRequired

in
{ AwsLightsailStaticIpOptional = AwsLightsailStaticIpOptional
, AwsLightsailStaticIpRequired = AwsLightsailStaticIpRequired
, AwsLightsailStaticIp = AwsLightsailStaticIp
}
