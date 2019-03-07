
let AwsDefaultVpcDhcpOptionsOptional =
  { netbios_name_servers: Optional (List Text)
  , netbios_node_type: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsDefaultVpcDhcpOptionsRequired = {}
let AwsDefaultVpcDhcpOptions = AwsDefaultVpcDhcpOptionsOptional //\\ AwsDefaultVpcDhcpOptionsRequired

in
{ AwsDefaultVpcDhcpOptionsOptional = AwsDefaultVpcDhcpOptionsOptional
, AwsDefaultVpcDhcpOptionsRequired = AwsDefaultVpcDhcpOptionsRequired
, AwsDefaultVpcDhcpOptions = AwsDefaultVpcDhcpOptions
}
