
let AwsGlueCatalogDatabaseOptional =
  { catalog_id: Optional Text
  , description: Optional Text
  , location_uri: Optional Text
  , parameters: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsGlueCatalogDatabaseRequired =
  { name: Text }
let AwsGlueCatalogDatabase = AwsGlueCatalogDatabaseOptional //\\ AwsGlueCatalogDatabaseRequired

in
{ AwsGlueCatalogDatabaseOptional = AwsGlueCatalogDatabaseOptional
, AwsGlueCatalogDatabaseRequired = AwsGlueCatalogDatabaseRequired
, AwsGlueCatalogDatabase = AwsGlueCatalogDatabase
}
