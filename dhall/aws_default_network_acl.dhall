
let EgressOptional =
  { cidr_block : Optional Text
  , icmp_code : Optional Natural
  , icmp_type : Optional Natural
  , ipv6_cidr_block : Optional Text
  }

let EgressRequired =
  { action : Text
  , from_port : Natural
  , protocol : Text
  , rule_no : Natural
  , to_port : Natural
  }
let Egress = EgressOptional //\\ EgressRequired

let IngressOptional =
  { cidr_block : Optional Text
  , icmp_code : Optional Natural
  , icmp_type : Optional Natural
  , ipv6_cidr_block : Optional Text
  }

let IngressRequired =
  { action : Text
  , from_port : Natural
  , protocol : Text
  , rule_no : Natural
  , to_port : Natural
  }
let Ingress = IngressOptional //\\ IngressRequired

let AwsDefaultNetworkAclOptional =
  { subnet_ids : Optional (List Text)
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , egress : Optional (List Egress)
  , ingress : Optional (List Ingress)
  }

let AwsDefaultNetworkAclRequired =
  { default_network_acl_id : Text }
let AwsDefaultNetworkAcl = AwsDefaultNetworkAclOptional //\\ AwsDefaultNetworkAclRequired

in
{ AwsDefaultNetworkAclOptional = AwsDefaultNetworkAclOptional
, AwsDefaultNetworkAclRequired = AwsDefaultNetworkAclRequired
, AwsDefaultNetworkAcl = AwsDefaultNetworkAcl
, IngressOptional = IngressOptional
, IngressRequired = IngressRequired
, Ingress = Ingress
, EgressOptional = EgressOptional
, EgressRequired = EgressRequired
, Egress = Egress
}
