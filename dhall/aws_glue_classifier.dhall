
let GrokClassifierOptional =
  { custom_patterns : Optional Text }

let GrokClassifierRequired =
  { classification : Text
  , grok_pattern : Text
  }
let GrokClassifier = GrokClassifierOptional //\\ GrokClassifierRequired

let JsonClassifierOptional = {}

let JsonClassifierRequired =
  { json_path : Text }
let JsonClassifier = JsonClassifierOptional //\\ JsonClassifierRequired

let XmlClassifierOptional = {}

let XmlClassifierRequired =
  { classification : Text
  , row_tag : Text
  }
let XmlClassifier = XmlClassifierOptional //\\ XmlClassifierRequired

let AwsGlueClassifierOptional =
  { grok_classifier : Optional GrokClassifier
  , json_classifier : Optional JsonClassifier
  , xml_classifier : Optional XmlClassifier
  }

let AwsGlueClassifierRequired =
  { name : Text }
let AwsGlueClassifier = AwsGlueClassifierOptional //\\ AwsGlueClassifierRequired

in
{ AwsGlueClassifierOptional = AwsGlueClassifierOptional
, AwsGlueClassifierRequired = AwsGlueClassifierRequired
, AwsGlueClassifier = AwsGlueClassifier
, XmlClassifier = XmlClassifier
, JsonClassifier = JsonClassifier
, GrokClassifierOptional = GrokClassifierOptional
, GrokClassifierRequired = GrokClassifierRequired
, GrokClassifier = GrokClassifier
}
