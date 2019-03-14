
let attachment = {}

let awsNetworkInterface =
  { description = None Text
  , private_ip = None Text
  , private_ips = None (List Text)
  , private_ips_count = None Natural
  , security_groups = None (List Text)
  , source_dest_check = None Bool
  , tags = None (List { mapKey : Text, mapValue : Text })
  , attachment = None (List (../dhall/aws_network_interface.dhall).Attachment)
  }

in
{ awsNetworkInterface = awsNetworkInterface
}
