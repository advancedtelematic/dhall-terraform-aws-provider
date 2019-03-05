
let LocationOptional =
  { method: Optional Text
  , name: Optional Text
  , path: Optional Text
  , status_code: Optional Text
  }

let LocationRequired =
  { type: Text }
let Location = LocationOptional //\\ LocationRequired

let AwsApiGatewayDocumentationPartOptional = {}

let AwsApiGatewayDocumentationPartRequired =
  { properties: Text
  , rest_api_id: Text
  , location: Location
  }
let AwsApiGatewayDocumentationPart = AwsApiGatewayDocumentationPartOptional //\\ AwsApiGatewayDocumentationPartRequired

in
{ AwsApiGatewayDocumentationPart = AwsApiGatewayDocumentationPart
, LocationOptional = LocationOptional
, LocationRequired = LocationRequired
, Location = Location
}
