
let ingress =
  { cidr = None Text
  , security_group_name = None Text
  , security_group_owner_id = None Text
  }

let awsRedshiftSecurityGroup =
  { description = None Text }

in
{ awsRedshiftSecurityGroup = awsRedshiftSecurityGroup
, ingress = ingress
}
