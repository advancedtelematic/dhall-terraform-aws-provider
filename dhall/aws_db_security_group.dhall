
let IngressOptional =
  { cidr: Optional Text
  , security_group_id: Optional Text
  , security_group_name: Optional Text
  , security_group_owner_id: Optional Text
  }

let IngressRequired = {}
let Ingress = IngressOptional //\\ IngressRequired

let AwsDbSecurityGroupOptional =
  { description: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsDbSecurityGroupRequired =
  { name: Text
  , ingress: List Ingress
  }
let AwsDbSecurityGroup = AwsDbSecurityGroupOptional //\\ AwsDbSecurityGroupRequired

in
{ AwsDbSecurityGroupOptional = AwsDbSecurityGroupOptional
, AwsDbSecurityGroupRequired = AwsDbSecurityGroupRequired
, AwsDbSecurityGroup = AwsDbSecurityGroup
, IngressOptional = IngressOptional
, IngressRequired = IngressRequired
, Ingress = Ingress
}
