
let IngressOptional =
  { cidr: Optional Text
  , security_group_name: Optional Text
  , security_group_owner_id: Optional Text
  }

let IngressRequired = {}
let Ingress = IngressOptional //\\ IngressRequired

let AwsRedshiftSecurityGroupOptional =
  { description: Optional Text }

let AwsRedshiftSecurityGroupRequired =
  { name: Text
  , ingress: List Ingress
  }
let AwsRedshiftSecurityGroup = AwsRedshiftSecurityGroupOptional //\\ AwsRedshiftSecurityGroupRequired

in
{ AwsRedshiftSecurityGroupOptional = AwsRedshiftSecurityGroupOptional
, AwsRedshiftSecurityGroupRequired = AwsRedshiftSecurityGroupRequired
, AwsRedshiftSecurityGroup = AwsRedshiftSecurityGroup
, IngressOptional = IngressOptional
, IngressRequired = IngressRequired
, Ingress = Ingress
}
