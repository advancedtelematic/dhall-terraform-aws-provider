
let awsEc2CapacityReservation =
  { ebs_optimized = None Bool
  , end_date = None Text
  , end_date_type = None Text
  , ephemeral_storage = None Bool
  , instance_match_criteria = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , tenancy = None Text
  }

in
{ awsEc2CapacityReservation = awsEc2CapacityReservation
}
