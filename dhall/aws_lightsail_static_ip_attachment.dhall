
let AwsLightsailStaticIpAttachmentOptional = {}

let AwsLightsailStaticIpAttachmentRequired =
  { instance_name : Text
  , static_ip_name : Text
  }
let AwsLightsailStaticIpAttachment = AwsLightsailStaticIpAttachmentOptional //\\ AwsLightsailStaticIpAttachmentRequired

in
{ AwsLightsailStaticIpAttachment = AwsLightsailStaticIpAttachment
}
