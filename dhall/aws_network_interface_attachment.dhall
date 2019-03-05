
let AwsNetworkInterfaceAttachmentOptional =
  { attachment_id: Optional Text
  , status: Optional Text
  }

let AwsNetworkInterfaceAttachmentRequired =
  { device_index: Natural
  , instance_id: Text
  , network_interface_id: Text
  }
let AwsNetworkInterfaceAttachment = AwsNetworkInterfaceAttachmentOptional //\\ AwsNetworkInterfaceAttachmentRequired

in
{ AwsNetworkInterfaceAttachmentOptional = AwsNetworkInterfaceAttachmentOptional
, AwsNetworkInterfaceAttachmentRequired = AwsNetworkInterfaceAttachmentRequired
, AwsNetworkInterfaceAttachment = AwsNetworkInterfaceAttachment
}
