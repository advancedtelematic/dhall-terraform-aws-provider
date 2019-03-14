
let awsInternetGateway =
  { tags = None (List { mapKey : Text, mapValue : Text })
  , vpc_id = None Text
  }

in
{ awsInternetGateway = awsInternetGateway
}
