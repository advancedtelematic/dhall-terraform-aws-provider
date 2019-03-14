
let awsNetworkAclRule =
  { cidr_block = None Text
  , egress = None Bool
  , from_port = None Natural
  , icmp_code = None Text
  , icmp_type = None Text
  , ipv6_cidr_block = None Text
  , to_port = None Natural
  }

in
{ awsNetworkAclRule = awsNetworkAclRule
}
