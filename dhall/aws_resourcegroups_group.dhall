
let ResourceQueryOptional =
  { type : Optional Text }

let ResourceQueryRequired =
  { query : Text }
let ResourceQuery = ResourceQueryOptional //\\ ResourceQueryRequired

let AwsResourcegroupsGroupOptional =
  { description : Optional Text }

let AwsResourcegroupsGroupRequired =
  { name : Text
  , resource_query : ResourceQuery
  }
let AwsResourcegroupsGroup = AwsResourcegroupsGroupOptional //\\ AwsResourcegroupsGroupRequired

in
{ AwsResourcegroupsGroupOptional = AwsResourcegroupsGroupOptional
, AwsResourcegroupsGroupRequired = AwsResourcegroupsGroupRequired
, AwsResourcegroupsGroup = AwsResourcegroupsGroup
, ResourceQueryOptional = ResourceQueryOptional
, ResourceQueryRequired = ResourceQueryRequired
, ResourceQuery = ResourceQuery
}
