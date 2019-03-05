
let EgressOptional =
  { cidr_block: Optional Text
  , icmp_code: Optional Natural
  , icmp_type: Optional Natural
  , ipv6_cidr_block: Optional Text
  }

let EgressRequired =
  { action: Text
  , from_port: Natural
  , protocol: Text
  , rule_no: Natural
  , to_port: Natural
  }
let Egress = EgressOptional //\\ EgressRequired

let IngressOptional =
  { cidr_block: Optional Text
  , icmp_code: Optional Natural
  , icmp_type: Optional Natural
  , ipv6_cidr_block: Optional Text
  }

let IngressRequired =
  { action: Text
  , from_port: Natural
  , protocol: Text
  , rule_no: Natural
  , to_port: Natural
  }
let Ingress = IngressOptional //\\ IngressRequired

let AwsNetworkAclOptional =
  { owner_id: Optional Text
  , subnet_id: Optional Text
  , subnet_ids: Optional (List Text)
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , egress: Optional (List Egress)
  , ingress: Optional (List Ingress)
  }

let AwsNetworkAclRequired =
  { vpc_id: Text }
let AwsNetworkAcl = AwsNetworkAclOptional //\\ AwsNetworkAclRequired

in
{ AwsNetworkAclOptional = AwsNetworkAclOptional
, AwsNetworkAclRequired = AwsNetworkAclRequired
, AwsNetworkAcl = AwsNetworkAcl
, IngressOptional = IngressOptional
, IngressRequired = IngressRequired
, Ingress = Ingress
, EgressOptional = EgressOptional
, EgressRequired = EgressRequired
, Egress = Egress
}
