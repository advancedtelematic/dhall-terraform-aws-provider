
let partitionKeys =
  { comment = None Text
  , type = None Text
  }

let columns =
  { comment = None Text
  , type = None Text
  }

let serDeInfo =
  { name = None Text
  , parameters = None (List { mapKey : Text, mapValue : Text })
  , serialization_library = None Text
  }

let skewedInfo =
  { skewed_column_names = None (List Text)
  , skewed_column_value_location_maps = None (List { mapKey : Text, mapValue : Text })
  , skewed_column_values = None (List Text)
  }

let sortColumns = {}

let storageDescriptor =
  { bucket_columns = None (List Text)
  , compressed = None Bool
  , input_format = None Text
  , location = None Text
  , number_of_buckets = None Natural
  , output_format = None Text
  , parameters = None (List { mapKey : Text, mapValue : Text })
  , stored_as_sub_directories = None Bool
  , columns = None (List (../dhall/aws_glue_catalog_table.dhall).Columns)
  , ser_de_info = None (../dhall/aws_glue_catalog_table.dhall).SerDeInfo
  , skewed_info = None (../dhall/aws_glue_catalog_table.dhall).SkewedInfo
  , sort_columns = None (List (../dhall/aws_glue_catalog_table.dhall).SortColumns)
  }

let awsGlueCatalogTable =
  { catalog_id = None Text
  , description = None Text
  , owner = None Text
  , parameters = None (List { mapKey : Text, mapValue : Text })
  , retention = None Natural
  , table_type = None Text
  , view_expanded_text = None Text
  , view_original_text = None Text
  , partition_keys = None (List (../dhall/aws_glue_catalog_table.dhall).PartitionKeys)
  , storage_descriptor = None (../dhall/aws_glue_catalog_table.dhall).StorageDescriptor
  }

in
{ awsGlueCatalogTable = awsGlueCatalogTable
, storageDescriptor = storageDescriptor
, skewedInfo = skewedInfo
, serDeInfo = serDeInfo
, columns = columns
, partitionKeys = partitionKeys
}
