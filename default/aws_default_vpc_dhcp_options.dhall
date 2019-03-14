
let awsDefaultVpcDhcpOptions =
  { netbios_name_servers = None (List Text)
  , netbios_node_type = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsDefaultVpcDhcpOptions = awsDefaultVpcDhcpOptions
}
