
let AwsTransferUserOptional =
  { home_directory : Optional Text
  , policy : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsTransferUserRequired =
  { role : Text
  , server_id : Text
  , user_name : Text
  }
let AwsTransferUser = AwsTransferUserOptional //\\ AwsTransferUserRequired

in
{ AwsTransferUserOptional = AwsTransferUserOptional
, AwsTransferUserRequired = AwsTransferUserRequired
, AwsTransferUser = AwsTransferUser
}
