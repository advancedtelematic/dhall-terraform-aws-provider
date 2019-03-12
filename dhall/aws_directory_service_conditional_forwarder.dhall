
let AwsDirectoryServiceConditionalForwarderOptional = {}

let AwsDirectoryServiceConditionalForwarderRequired =
  { directory_id : Text
  , dns_ips : (List Text)
  , remote_domain_name : Text
  }
let AwsDirectoryServiceConditionalForwarder = AwsDirectoryServiceConditionalForwarderOptional //\\ AwsDirectoryServiceConditionalForwarderRequired

in
{ AwsDirectoryServiceConditionalForwarder = AwsDirectoryServiceConditionalForwarder
}
