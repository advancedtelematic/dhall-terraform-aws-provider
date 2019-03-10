let ref : Text -> Text -> Text -> Text =
\(prefix : Text) -> \(suffix : Text) -> \(name : Text)
  -> "\${${prefix}.${name}.${suffix}}"

let AwsInstance = { arn : Text -> Text -> Text -> Text }

let awsInstance = { arn = ref "aws_instance" "arn" }

in awsInstance.arn "my-instance-name"
