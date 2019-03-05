
let IpSetDescriptorOptional = {}

let IpSetDescriptorRequired =
  { type: Text
  , value: Text
  }
let IpSetDescriptor = IpSetDescriptorOptional //\\ IpSetDescriptorRequired

let AwsWafregionalIpsetOptional =
  { arn: Optional Text
  , ip_set_descriptor: Optional (List IpSetDescriptor)
  }

let AwsWafregionalIpsetRequired =
  { name: Text }
let AwsWafregionalIpset = AwsWafregionalIpsetOptional //\\ AwsWafregionalIpsetRequired

in
{ AwsWafregionalIpsetOptional = AwsWafregionalIpsetOptional
, AwsWafregionalIpsetRequired = AwsWafregionalIpsetRequired
, AwsWafregionalIpset = AwsWafregionalIpset
, IpSetDescriptor = IpSetDescriptor
}
