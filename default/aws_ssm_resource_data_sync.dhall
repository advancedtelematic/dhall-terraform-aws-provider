
let s3Destination =
  { kms_key_arn = None Text
  , prefix = None Text
  , sync_format = None Text
  }

let awsSsmResourceDataSync = {}

in
{ s3Destination = s3Destination
}
