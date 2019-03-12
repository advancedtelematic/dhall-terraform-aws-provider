
let AwsEc2CapacityReservationOptional =
  { ebs_optimized : Optional Bool
  , end_date : Optional Text
  , end_date_type : Optional Text
  , ephemeral_storage : Optional Bool
  , instance_match_criteria : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , tenancy : Optional Text
  }

let AwsEc2CapacityReservationRequired =
  { availability_zone : Text
  , instance_count : Natural
  , instance_platform : Text
  , instance_type : Text
  }
let AwsEc2CapacityReservation = AwsEc2CapacityReservationOptional //\\ AwsEc2CapacityReservationRequired

in
{ AwsEc2CapacityReservationOptional = AwsEc2CapacityReservationOptional
, AwsEc2CapacityReservationRequired = AwsEc2CapacityReservationRequired
, AwsEc2CapacityReservation = AwsEc2CapacityReservation
}
