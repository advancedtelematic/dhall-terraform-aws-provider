
let awsGlueCatalogDatabase =
  { catalog_id = None Text
  , description = None Text
  , location_uri = None Text
  , parameters = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsGlueCatalogDatabase = awsGlueCatalogDatabase
}
