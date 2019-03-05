
let AwsMediaStoreContainerPolicyOptional = {}

let AwsMediaStoreContainerPolicyRequired =
  { container_name: Text
  , policy: Text
  }
let AwsMediaStoreContainerPolicy = AwsMediaStoreContainerPolicyOptional //\\ AwsMediaStoreContainerPolicyRequired

in
{ AwsMediaStoreContainerPolicy = AwsMediaStoreContainerPolicy
}
