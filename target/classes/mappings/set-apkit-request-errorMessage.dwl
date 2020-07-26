%dw 2.0
output application/json
---
{
	"type":	vars.error.'type',   // we just keep the default value
	"message": vars.errorParts.parts[0] default ""
               
}