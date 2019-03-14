
let awsTransferServer =
  { force_destroy = None Bool
  , identity_provider_type = None Text
  , invocation_role = None Text
  , logging_role = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , url = None Text
  }

in
{ awsTransferServer = awsTransferServer
}
