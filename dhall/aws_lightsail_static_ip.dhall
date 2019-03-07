
let AwsLightsailStaticIpOptional = {}

let AwsLightsailStaticIpRequired =
  { name: Text }
let AwsLightsailStaticIp = AwsLightsailStaticIpOptional //\\ AwsLightsailStaticIpRequired

in
{ AwsLightsailStaticIp = AwsLightsailStaticIp
}
