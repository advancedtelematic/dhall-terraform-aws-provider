
let ReplicaOptional = {}

let ReplicaRequired =
  { region_name: Text }
let Replica = ReplicaOptional //\\ ReplicaRequired

let AwsDynamodbGlobalTableOptional = {}

let AwsDynamodbGlobalTableRequired =
  { name: Text
  , replica: List Replica
  }
let AwsDynamodbGlobalTable = AwsDynamodbGlobalTableOptional //\\ AwsDynamodbGlobalTableRequired

in
{ AwsDynamodbGlobalTable = AwsDynamodbGlobalTable
, Replica = Replica
}
