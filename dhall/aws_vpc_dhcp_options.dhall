
let AwsVpcDhcpOptionsOptional =
  { domain_name: Optional Text
  , domain_name_servers: Optional (List Text)
  , netbios_name_servers: Optional (List Text)
  , netbios_node_type: Optional Text
  , ntp_servers: Optional (List Text)
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsVpcDhcpOptionsRequired = {}
let AwsVpcDhcpOptions = AwsVpcDhcpOptionsOptional //\\ AwsVpcDhcpOptionsRequired

in
{ AwsVpcDhcpOptionsOptional = AwsVpcDhcpOptionsOptional
, AwsVpcDhcpOptionsRequired = AwsVpcDhcpOptionsRequired
, AwsVpcDhcpOptions = AwsVpcDhcpOptions
}
