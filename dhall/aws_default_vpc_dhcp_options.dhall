
let AwsDefaultVpcDhcpOptionsOptional =
  { domain_name: Optional Text
  , domain_name_servers: Optional Text
  , netbios_name_servers: Optional (List Text)
  , netbios_node_type: Optional Text
  , ntp_servers: Optional Text
  , owner_id: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsDefaultVpcDhcpOptionsRequired = {}
let AwsDefaultVpcDhcpOptions = AwsDefaultVpcDhcpOptionsOptional //\\ AwsDefaultVpcDhcpOptionsRequired

in
{ AwsDefaultVpcDhcpOptionsOptional = AwsDefaultVpcDhcpOptionsOptional
, AwsDefaultVpcDhcpOptionsRequired = AwsDefaultVpcDhcpOptionsRequired
, AwsDefaultVpcDhcpOptions = AwsDefaultVpcDhcpOptions
}
