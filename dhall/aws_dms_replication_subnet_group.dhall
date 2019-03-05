
let AwsDmsReplicationSubnetGroupOptional =
  { replication_subnet_group_arn: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , vpc_id: Optional Text
  }

let AwsDmsReplicationSubnetGroupRequired =
  { replication_subnet_group_description: Text
  , replication_subnet_group_id: Text
  , subnet_ids: (List Text)
  }
let AwsDmsReplicationSubnetGroup = AwsDmsReplicationSubnetGroupOptional //\\ AwsDmsReplicationSubnetGroupRequired

in
{ AwsDmsReplicationSubnetGroupOptional = AwsDmsReplicationSubnetGroupOptional
, AwsDmsReplicationSubnetGroupRequired = AwsDmsReplicationSubnetGroupRequired
, AwsDmsReplicationSubnetGroup = AwsDmsReplicationSubnetGroup
}
