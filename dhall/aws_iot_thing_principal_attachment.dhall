
let AwsIotThingPrincipalAttachmentOptional = {}

let AwsIotThingPrincipalAttachmentRequired =
  { principal: Text
  , thing: Text
  }
let AwsIotThingPrincipalAttachment = AwsIotThingPrincipalAttachmentOptional //\\ AwsIotThingPrincipalAttachmentRequired

in
{ AwsIotThingPrincipalAttachment = AwsIotThingPrincipalAttachment
}
