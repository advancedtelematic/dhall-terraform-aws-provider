
let AwsSesConfigurationSetOptional = {}

let AwsSesConfigurationSetRequired =
  { name : Text }
let AwsSesConfigurationSet = AwsSesConfigurationSetOptional //\\ AwsSesConfigurationSetRequired

in
{ AwsSesConfigurationSet = AwsSesConfigurationSet
}
