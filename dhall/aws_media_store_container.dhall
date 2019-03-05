
let AwsMediaStoreContainerOptional =
  { arn: Optional Text
  , endpoint: Optional Text
  }

let AwsMediaStoreContainerRequired =
  { name: Text }
let AwsMediaStoreContainer = AwsMediaStoreContainerOptional //\\ AwsMediaStoreContainerRequired

in
{ AwsMediaStoreContainerOptional = AwsMediaStoreContainerOptional
, AwsMediaStoreContainerRequired = AwsMediaStoreContainerRequired
, AwsMediaStoreContainer = AwsMediaStoreContainer
}
