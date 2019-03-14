
let ipSetDescriptor = {}

let awsWafregionalIpset =
  { ip_set_descriptor = None (List (../dhall/aws_wafregional_ipset.dhall).IpSetDescriptor) }

in
{ awsWafregionalIpset = awsWafregionalIpset
}
