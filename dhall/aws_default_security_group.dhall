
let EgressOptional =
  { cidr_blocks : Optional (List Text)
  , description : Optional Text
  , ipv6_cidr_blocks : Optional (List Text)
  , prefix_list_ids : Optional (List Text)
  , security_groups : Optional (List Text)
  , self : Optional Bool
  }

let EgressRequired =
  { from_port : Natural
  , protocol : Text
  , to_port : Natural
  }
let Egress = EgressOptional //\\ EgressRequired

let IngressOptional =
  { cidr_blocks : Optional (List Text)
  , description : Optional Text
  , ipv6_cidr_blocks : Optional (List Text)
  , prefix_list_ids : Optional (List Text)
  , security_groups : Optional (List Text)
  , self : Optional Bool
  }

let IngressRequired =
  { from_port : Natural
  , protocol : Text
  , to_port : Natural
  }
let Ingress = IngressOptional //\\ IngressRequired

let AwsDefaultSecurityGroupOptional =
  { revoke_rules_on_delete : Optional Bool
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , vpc_id : Optional Text
  , egress : Optional (List Egress)
  , ingress : Optional (List Ingress)
  }

let AwsDefaultSecurityGroupRequired = {}
let AwsDefaultSecurityGroup = AwsDefaultSecurityGroupOptional //\\ AwsDefaultSecurityGroupRequired

in
{ AwsDefaultSecurityGroupOptional = AwsDefaultSecurityGroupOptional
, AwsDefaultSecurityGroupRequired = AwsDefaultSecurityGroupRequired
, AwsDefaultSecurityGroup = AwsDefaultSecurityGroup
, IngressOptional = IngressOptional
, IngressRequired = IngressRequired
, Ingress = Ingress
, EgressOptional = EgressOptional
, EgressRequired = EgressRequired
, Egress = Egress
}
