
let AwsTransferSshKeyOptional = {}

let AwsTransferSshKeyRequired =
  { body: Text
  , server_id: Text
  , user_name: Text
  }
let AwsTransferSshKey = AwsTransferSshKeyOptional //\\ AwsTransferSshKeyRequired

in
{ AwsTransferSshKey = AwsTransferSshKey
}
