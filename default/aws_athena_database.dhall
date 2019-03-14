
let encryptionConfiguration =
  { kms_key = None Text }

let awsAthenaDatabase =
  { force_destroy = None Bool
  , encryption_configuration = None (../dhall/aws_athena_database.dhall).EncryptionConfiguration
  }

in
{ awsAthenaDatabase = awsAthenaDatabase
, encryptionConfiguration = encryptionConfiguration
}
