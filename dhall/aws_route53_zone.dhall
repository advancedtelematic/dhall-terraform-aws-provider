
let VpcOptional =
  { vpc_region: Optional Text }

let VpcRequired =
  { vpc_id: Text }
let Vpc = VpcOptional //\\ VpcRequired

let AwsRoute53ZoneOptional =
  { comment: Optional Text
  , delegation_set_id: Optional Text
  , force_destroy: Optional Bool
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , vpc_id: Optional Text
  , vpc_region: Optional Text
  }

let AwsRoute53ZoneRequired =
  { name: Text
  , vpc: List Vpc
  }
let AwsRoute53Zone = AwsRoute53ZoneOptional //\\ AwsRoute53ZoneRequired

in
{ AwsRoute53ZoneOptional = AwsRoute53ZoneOptional
, AwsRoute53ZoneRequired = AwsRoute53ZoneRequired
, AwsRoute53Zone = AwsRoute53Zone
, VpcOptional = VpcOptional
, VpcRequired = VpcRequired
, Vpc = Vpc
}
