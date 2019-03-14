
let notification = {}

let awsGlacierVault =
  { access_policy = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , notification = None (List (../dhall/aws_glacier_vault.dhall).Notification)
  }

in
{ awsGlacierVault = awsGlacierVault
}
