
let AwsSesTemplateOptional =
  { html: Optional Text
  , subject: Optional Text
  , text: Optional Text
  }

let AwsSesTemplateRequired =
  { name: Text }
let AwsSesTemplate = AwsSesTemplateOptional //\\ AwsSesTemplateRequired

in
{ AwsSesTemplateOptional = AwsSesTemplateOptional
, AwsSesTemplateRequired = AwsSesTemplateRequired
, AwsSesTemplate = AwsSesTemplate
}
