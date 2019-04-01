
let CommandOptional =
  { name : Optional Text }

let CommandRequired =
  { script_location : Text }
let Command = CommandOptional //\\ CommandRequired

in
{ CommandOptional = CommandOptional
, CommandRequired = CommandRequired
, Command = Command
}
