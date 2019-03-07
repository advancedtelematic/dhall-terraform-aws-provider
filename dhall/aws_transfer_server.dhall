
let AwsTransferServerOptional =
  { force_destroy: Optional Bool
  , identity_provider_type: Optional Text
  , invocation_role: Optional Text
  , logging_role: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , url: Optional Text
  }

let AwsTransferServerRequired = {}
let AwsTransferServer = AwsTransferServerOptional //\\ AwsTransferServerRequired

in
{ AwsTransferServerOptional = AwsTransferServerOptional
, AwsTransferServerRequired = AwsTransferServerRequired
, AwsTransferServer = AwsTransferServer
}
