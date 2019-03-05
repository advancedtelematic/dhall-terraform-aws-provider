
let AwsDynamodbTableItemOptional =
  { range_key: Optional Text }

let AwsDynamodbTableItemRequired =
  { hash_key: Text
  , item: Text
  , table_name: Text
  }
let AwsDynamodbTableItem = AwsDynamodbTableItemOptional //\\ AwsDynamodbTableItemRequired

in
{ AwsDynamodbTableItemOptional = AwsDynamodbTableItemOptional
, AwsDynamodbTableItemRequired = AwsDynamodbTableItemRequired
, AwsDynamodbTableItem = AwsDynamodbTableItem
}
