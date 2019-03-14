
let awsDocdbSubnetGroup =
  { description = None Text
  , name = None Text
  , name_prefix = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsDocdbSubnetGroup = awsDocdbSubnetGroup
}
