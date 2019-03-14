
let grokClassifier =
  { custom_patterns = None Text }

let jsonClassifier = {}

let xmlClassifier = {}

let awsGlueClassifier =
  { grok_classifier = None (../dhall/aws_glue_classifier.dhall).GrokClassifier
  , json_classifier = None (../dhall/aws_glue_classifier.dhall).JsonClassifier
  , xml_classifier = None (../dhall/aws_glue_classifier.dhall).XmlClassifier
  }

in
{ awsGlueClassifier = awsGlueClassifier
, grokClassifier = grokClassifier
}
