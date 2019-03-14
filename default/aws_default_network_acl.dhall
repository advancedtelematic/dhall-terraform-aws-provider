
let egress =
  { cidr_block = None Text
  , icmp_code = None Natural
  , icmp_type = None Natural
  , ipv6_cidr_block = None Text
  }

let ingress =
  { cidr_block = None Text
  , icmp_code = None Natural
  , icmp_type = None Natural
  , ipv6_cidr_block = None Text
  }

let awsDefaultNetworkAcl =
  { subnet_ids = None (List Text)
  , tags = None (List { mapKey : Text, mapValue : Text })
  , egress = None (List (../dhall/aws_default_network_acl.dhall).Egress)
  , ingress = None (List (../dhall/aws_default_network_acl.dhall).Ingress)
  }

in
{ awsDefaultNetworkAcl = awsDefaultNetworkAcl
, ingress = ingress
, egress = egress
}
