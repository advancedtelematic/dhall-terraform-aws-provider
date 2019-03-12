
let NotificationOptional = {}

let NotificationRequired =
  { events : (List Text)
  , sns_topic : Text
  }
let Notification = NotificationOptional //\\ NotificationRequired

let AwsGlacierVaultOptional =
  { access_policy : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , notification : Optional (List Notification)
  }

let AwsGlacierVaultRequired =
  { name : Text }
let AwsGlacierVault = AwsGlacierVaultOptional //\\ AwsGlacierVaultRequired

in
{ AwsGlacierVaultOptional = AwsGlacierVaultOptional
, AwsGlacierVaultRequired = AwsGlacierVaultRequired
, AwsGlacierVault = AwsGlacierVault
, Notification = Notification
}
