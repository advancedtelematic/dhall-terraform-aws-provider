
let AwsDaxSubnetGroupOptional =
  { description: Optional Text
  , vpc_id: Optional Text
  }

let AwsDaxSubnetGroupRequired =
  { name: Text
  , subnet_ids: (List Text)
  }
let AwsDaxSubnetGroup = AwsDaxSubnetGroupOptional //\\ AwsDaxSubnetGroupRequired

in
{ AwsDaxSubnetGroupOptional = AwsDaxSubnetGroupOptional
, AwsDaxSubnetGroupRequired = AwsDaxSubnetGroupRequired
, AwsDaxSubnetGroup = AwsDaxSubnetGroup
}
