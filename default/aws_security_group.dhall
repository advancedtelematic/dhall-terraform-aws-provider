
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

let awsSecurityGroup =
  { description = None Text
  , name = None Text
  , name_prefix = None Text
  , revoke_rules_on_delete = None Bool
  , tags = None (List { mapKey : Text, mapValue : Text })
  , vpc_id = None Text
  , egress = None (List (../dhall/aws_security_group.dhall).Egress)
  , ingress = None (List (../dhall/aws_security_group.dhall).Ingress)
  }

in
{ awsSecurityGroup = awsSecurityGroup
, ingress = ingress
, egress = egress
}
