
let AwsAthenaNamedQueryOptional =
  { description : Optional Text }

let AwsAthenaNamedQueryRequired =
  { database : Text
  , name : Text
  , query : Text
  }
let AwsAthenaNamedQuery = AwsAthenaNamedQueryOptional //\\ AwsAthenaNamedQueryRequired

in
{ AwsAthenaNamedQueryOptional = AwsAthenaNamedQueryOptional
, AwsAthenaNamedQueryRequired = AwsAthenaNamedQueryRequired
, AwsAthenaNamedQuery = AwsAthenaNamedQuery
}
