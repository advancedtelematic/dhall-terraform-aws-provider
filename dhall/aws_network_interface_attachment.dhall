
let AwsNetworkInterfaceAttachmentOptional = {}

let AwsNetworkInterfaceAttachmentRequired =
  { device_index: Natural
  , instance_id: Text
  , network_interface_id: Text
  }
let AwsNetworkInterfaceAttachment = AwsNetworkInterfaceAttachmentOptional //\\ AwsNetworkInterfaceAttachmentRequired

in
{ AwsNetworkInterfaceAttachment = AwsNetworkInterfaceAttachment
}
