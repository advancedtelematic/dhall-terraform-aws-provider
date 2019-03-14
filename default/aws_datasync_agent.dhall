
let awsDatasyncAgent =
  { activation_key = None Text
  , ip_address = None Text
  , name = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsDatasyncAgent = awsDatasyncAgent
}
