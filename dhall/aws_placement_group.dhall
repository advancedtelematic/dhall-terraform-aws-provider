
let AwsPlacementGroupOptional = {}

let AwsPlacementGroupRequired =
  { name: Text
  , strategy: Text
  }
let AwsPlacementGroup = AwsPlacementGroupOptional //\\ AwsPlacementGroupRequired

in
{ AwsPlacementGroup = AwsPlacementGroup
}
