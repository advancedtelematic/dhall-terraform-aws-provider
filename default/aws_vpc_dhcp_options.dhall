
let awsVpcDhcpOptions =
  { domain_name = None Text
  , domain_name_servers = None (List Text)
  , netbios_name_servers = None (List Text)
  , netbios_node_type = None Text
  , ntp_servers = None (List Text)
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsVpcDhcpOptions = awsVpcDhcpOptions
}
