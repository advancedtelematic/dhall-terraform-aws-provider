
let awsRdsGlobalCluster =
  { database_name = None Text
  , deletion_protection = None Bool
  , engine = None Text
  , engine_version = None Text
  , storage_encrypted = None Bool
  }

in
{ awsRdsGlobalCluster = awsRdsGlobalCluster
}
