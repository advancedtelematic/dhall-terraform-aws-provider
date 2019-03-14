
let awsDxLag =
  { force_destroy = None Bool
  , number_of_connections = None Natural
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsDxLag = awsDxLag
}
