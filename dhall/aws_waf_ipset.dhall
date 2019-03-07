
let IpSetDescriptorsOptional = {}

let IpSetDescriptorsRequired =
  { type: Text
  , value: Text
  }
let IpSetDescriptors = IpSetDescriptorsOptional //\\ IpSetDescriptorsRequired

let AwsWafIpsetOptional =
  { ip_set_descriptors: Optional (List IpSetDescriptors) }

let AwsWafIpsetRequired =
  { name: Text }
let AwsWafIpset = AwsWafIpsetOptional //\\ AwsWafIpsetRequired

in
{ AwsWafIpsetOptional = AwsWafIpsetOptional
, AwsWafIpsetRequired = AwsWafIpsetRequired
, AwsWafIpset = AwsWafIpset
, IpSetDescriptors = IpSetDescriptors
}
