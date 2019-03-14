
let awsSecurityGroupRule =
  { cidr_blocks = None (List Text)
  , description = None Text
  , ipv6_cidr_blocks = None (List Text)
  , prefix_list_ids = None (List Text)
  , self = None Bool
  , source_security_group_id = None Text
  }

in
{ awsSecurityGroupRule = awsSecurityGroupRule
}
