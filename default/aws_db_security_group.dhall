
let ingress =
  { cidr = None Text
  , security_group_id = None Text
  , security_group_name = None Text
  , security_group_owner_id = None Text
  }

let awsDbSecurityGroup =
  { description = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsDbSecurityGroup = awsDbSecurityGroup
, ingress = ingress
}
