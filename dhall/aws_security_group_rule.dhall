
let AwsSecurityGroupRuleOptional =
  { cidr_blocks: Optional (List Text)
  , description: Optional Text
  , ipv6_cidr_blocks: Optional (List Text)
  , prefix_list_ids: Optional (List Text)
  , self: Optional Bool
  , source_security_group_id: Optional Text
  }

let AwsSecurityGroupRuleRequired =
  { from_port: Natural
  , protocol: Text
  , security_group_id: Text
  , to_port: Natural
  , type: Text
  }
let AwsSecurityGroupRule = AwsSecurityGroupRuleOptional //\\ AwsSecurityGroupRuleRequired

in
{ AwsSecurityGroupRuleOptional = AwsSecurityGroupRuleOptional
, AwsSecurityGroupRuleRequired = AwsSecurityGroupRuleRequired
, AwsSecurityGroupRule = AwsSecurityGroupRule
}
