
let PartitionKeysOptional =
  { comment: Optional Text
  , type: Optional Text
  }

let PartitionKeysRequired =
  { name: Text }
let PartitionKeys = PartitionKeysOptional //\\ PartitionKeysRequired

let ColumnsOptional =
  { comment: Optional Text
  , type: Optional Text
  }

let ColumnsRequired =
  { name: Text }
let Columns = ColumnsOptional //\\ ColumnsRequired

let SerDeInfoOptional =
  { name: Optional Text
  , parameters: Optional (List { mapKey : Text, mapValue : Text })
  , serialization_library: Optional Text
  }

let SerDeInfoRequired = {}
let SerDeInfo = SerDeInfoOptional //\\ SerDeInfoRequired

let SkewedInfoOptional =
  { skewed_column_names: Optional (List Text)
  , skewed_column_value_location_maps: Optional (List { mapKey : Text, mapValue : Text })
  , skewed_column_values: Optional (List Text)
  }

let SkewedInfoRequired = {}
let SkewedInfo = SkewedInfoOptional //\\ SkewedInfoRequired

let SortColumnsOptional = {}

let SortColumnsRequired =
  { column: Text
  , sort_order: Natural
  }
let SortColumns = SortColumnsOptional //\\ SortColumnsRequired

let StorageDescriptorOptional =
  { bucket_columns: Optional (List Text)
  , compressed: Optional Bool
  , input_format: Optional Text
  , location: Optional Text
  , number_of_buckets: Optional Natural
  , output_format: Optional Text
  , parameters: Optional (List { mapKey : Text, mapValue : Text })
  , stored_as_sub_directories: Optional Bool
  , columns: Optional (List Columns)
  , ser_de_info: Optional SerDeInfo
  , skewed_info: Optional SkewedInfo
  , sort_columns: Optional (List SortColumns)
  }

let StorageDescriptorRequired = {}
let StorageDescriptor = StorageDescriptorOptional //\\ StorageDescriptorRequired

let AwsGlueCatalogTableOptional =
  { catalog_id: Optional Text
  , description: Optional Text
  , owner: Optional Text
  , parameters: Optional (List { mapKey : Text, mapValue : Text })
  , retention: Optional Natural
  , table_type: Optional Text
  , view_expanded_text: Optional Text
  , view_original_text: Optional Text
  , partition_keys: Optional (List PartitionKeys)
  , storage_descriptor: Optional StorageDescriptor
  }

let AwsGlueCatalogTableRequired =
  { database_name: Text
  , name: Text
  }
let AwsGlueCatalogTable = AwsGlueCatalogTableOptional //\\ AwsGlueCatalogTableRequired

in
{ AwsGlueCatalogTableOptional = AwsGlueCatalogTableOptional
, AwsGlueCatalogTableRequired = AwsGlueCatalogTableRequired
, AwsGlueCatalogTable = AwsGlueCatalogTable
, StorageDescriptorOptional = StorageDescriptorOptional
, StorageDescriptorRequired = StorageDescriptorRequired
, StorageDescriptor = StorageDescriptor
, SortColumns = SortColumns
, SkewedInfoOptional = SkewedInfoOptional
, SkewedInfoRequired = SkewedInfoRequired
, SkewedInfo = SkewedInfo
, SerDeInfoOptional = SerDeInfoOptional
, SerDeInfoRequired = SerDeInfoRequired
, SerDeInfo = SerDeInfo
, ColumnsOptional = ColumnsOptional
, ColumnsRequired = ColumnsRequired
, Columns = Columns
, PartitionKeysOptional = PartitionKeysOptional
, PartitionKeysRequired = PartitionKeysRequired
, PartitionKeys = PartitionKeys
}
