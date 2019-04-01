
let AwsDmsReplicationSubnetGroupOptional =
  { tags : Optional (List { mapKey : Text, mapValue : Text }) }

let AwsDmsReplicationSubnetGroupRequired =
  { replication_subnet_group_description : Text
  , replication_subnet_group_id : Text
  , subnet_ids : (List Text)
  }
let AwsDmsReplicationSubnetGroup = AwsDmsReplicationSubnetGroupOptional //\\ AwsDmsReplicationSubnetGroupRequired

in
{ AwsDmsReplicationSubnetGroupOptional = AwsDmsReplicationSubnetGroupOptional
, AwsDmsReplicationSubnetGroupRequired = AwsDmsReplicationSubnetGroupRequired
, AwsDmsReplicationSubnetGroup = AwsDmsReplicationSubnetGroup
}
