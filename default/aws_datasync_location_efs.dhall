
let ec2Config = {}

let awsDatasyncLocationEfs =
  { subdirectory = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsDatasyncLocationEfs = awsDatasyncLocationEfs
}
