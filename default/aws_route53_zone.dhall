
let vpc =
  { vpc_region = None Text }

let awsRoute53Zone =
  { comment = None Text
  , delegation_set_id = None Text
  , force_destroy = None Bool
  , tags = None (List { mapKey : Text, mapValue : Text })
  , vpc_id = None Text
  , vpc_region = None Text
  }

in
{ awsRoute53Zone = awsRoute53Zone
, vpc = vpc
}
