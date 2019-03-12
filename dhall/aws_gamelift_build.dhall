
let StorageLocationOptional = {}

let StorageLocationRequired =
  { bucket : Text
  , key : Text
  , role_arn : Text
  }
let StorageLocation = StorageLocationOptional //\\ StorageLocationRequired

let AwsGameliftBuildOptional =
  { version : Optional Text }

let AwsGameliftBuildRequired =
  { name : Text
  , operating_system : Text
  , storage_location : StorageLocation
  }
let AwsGameliftBuild = AwsGameliftBuildOptional //\\ AwsGameliftBuildRequired

in
{ AwsGameliftBuildOptional = AwsGameliftBuildOptional
, AwsGameliftBuildRequired = AwsGameliftBuildRequired
, AwsGameliftBuild = AwsGameliftBuild
, StorageLocation = StorageLocation
}
