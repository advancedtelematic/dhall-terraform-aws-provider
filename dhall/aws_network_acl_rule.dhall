
let AwsNetworkAclRuleOptional =
  { cidr_block: Optional Text
  , egress: Optional Bool
  , from_port: Optional Natural
  , icmp_code: Optional Text
  , icmp_type: Optional Text
  , ipv6_cidr_block: Optional Text
  , to_port: Optional Natural
  }

let AwsNetworkAclRuleRequired =
  { network_acl_id: Text
  , protocol: Text
  , rule_action: Text
  , rule_number: Natural
  }
let AwsNetworkAclRule = AwsNetworkAclRuleOptional //\\ AwsNetworkAclRuleRequired

in
{ AwsNetworkAclRuleOptional = AwsNetworkAclRuleOptional
, AwsNetworkAclRuleRequired = AwsNetworkAclRuleRequired
, AwsNetworkAclRule = AwsNetworkAclRule
}
