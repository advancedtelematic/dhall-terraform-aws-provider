
let AttachmentOptional =
  { attachment_id: Optional Text }

let AttachmentRequired =
  { device_index: Natural
  , instance: Text
  }
let Attachment = AttachmentOptional //\\ AttachmentRequired

let AwsNetworkInterfaceOptional =
  { description: Optional Text
  , private_dns_name: Optional Text
  , private_ip: Optional Text
  , private_ips: Optional (List Text)
  , private_ips_count: Optional Natural
  , security_groups: Optional (List Text)
  , source_dest_check: Optional Bool
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , attachment: Optional (List Attachment)
  }

let AwsNetworkInterfaceRequired =
  { subnet_id: Text }
let AwsNetworkInterface = AwsNetworkInterfaceOptional //\\ AwsNetworkInterfaceRequired

in
{ AwsNetworkInterfaceOptional = AwsNetworkInterfaceOptional
, AwsNetworkInterfaceRequired = AwsNetworkInterfaceRequired
, AwsNetworkInterface = AwsNetworkInterface
, AttachmentOptional = AttachmentOptional
, AttachmentRequired = AttachmentRequired
, Attachment = Attachment
}
