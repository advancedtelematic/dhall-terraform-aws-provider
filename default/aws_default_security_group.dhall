
let egress =
  { cidr_blocks = None (List Text)
  , description = None Text
  , ipv6_cidr_blocks = None (List Text)
  , prefix_list_ids = None (List Text)
  , security_groups = None (List Text)
  , self = None Bool
  }

let ingress =
  { cidr_blocks = None (List Text)
  , description = None Text
  , ipv6_cidr_blocks = None (List Text)
  , prefix_list_ids = None (List Text)
  , security_groups = None (List Text)
  , self = None Bool
  }

let awsDefaultSecurityGroup =
  { revoke_rules_on_delete = None Bool
  , tags = None (List { mapKey : Text, mapValue : Text })
  , vpc_id = None Text
  , egress = None (List (../dhall/aws_default_security_group.dhall).Egress)
  , ingress = None (List (../dhall/aws_default_security_group.dhall).Ingress)
  }

in
{ awsDefaultSecurityGroup = awsDefaultSecurityGroup
, ingress = ingress
, egress = egress
}
