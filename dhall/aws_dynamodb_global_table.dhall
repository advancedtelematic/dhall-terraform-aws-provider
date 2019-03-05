
let ReplicaOptional = {}

let ReplicaRequired =
  { region_name: Text }
let Replica = ReplicaOptional //\\ ReplicaRequired

let AwsDynamodbGlobalTableOptional =
  { arn: Optional Text }

let AwsDynamodbGlobalTableRequired =
  { name: Text
  , replica: List List Replica
  }
let AwsDynamodbGlobalTable = AwsDynamodbGlobalTableOptional //\\ AwsDynamodbGlobalTableRequired

in
{ AwsDynamodbGlobalTableOptional = AwsDynamodbGlobalTableOptional
, AwsDynamodbGlobalTableRequired = AwsDynamodbGlobalTableRequired
, AwsDynamodbGlobalTable = AwsDynamodbGlobalTable
, Replica = Replica
}
