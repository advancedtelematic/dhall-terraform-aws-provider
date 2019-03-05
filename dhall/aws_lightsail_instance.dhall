
let AwsLightsailInstanceOptional =
  { arn: Optional Text
  , cpu_count: Optional Natural
  , created_at: Optional Text
  , ipv6_address: Optional Text
  , is_static_ip: Optional Bool
  , key_pair_name: Optional Text
  , private_ip_address: Optional Text
  , public_ip_address: Optional Text
  , ram_size: Optional Natural
  , user_data: Optional Text
  , username: Optional Text
  }

let AwsLightsailInstanceRequired =
  { availability_zone: Text
  , blueprint_id: Text
  , bundle_id: Text
  , name: Text
  }
let AwsLightsailInstance = AwsLightsailInstanceOptional //\\ AwsLightsailInstanceRequired

in
{ AwsLightsailInstanceOptional = AwsLightsailInstanceOptional
, AwsLightsailInstanceRequired = AwsLightsailInstanceRequired
, AwsLightsailInstance = AwsLightsailInstance
}
