
let ipSetDescriptors = {}

let awsWafIpset =
  { ip_set_descriptors = None (List (../dhall/aws_waf_ipset.dhall).IpSetDescriptors) }

in
{ awsWafIpset = awsWafIpset
}
