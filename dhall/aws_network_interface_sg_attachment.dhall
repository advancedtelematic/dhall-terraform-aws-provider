
let AwsNetworkInterfaceSgAttachmentOptional = {}

let AwsNetworkInterfaceSgAttachmentRequired =
  { network_interface_id: Text
  , security_group_id: Text
  }
let AwsNetworkInterfaceSgAttachment = AwsNetworkInterfaceSgAttachmentOptional //\\ AwsNetworkInterfaceSgAttachmentRequired

in
{ AwsNetworkInterfaceSgAttachment = AwsNetworkInterfaceSgAttachment
}
