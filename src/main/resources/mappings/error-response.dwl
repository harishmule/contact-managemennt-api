%dw 2.0
output application/json
---
{ 
	"type": vars.error.'type',
	"message": vars.error.message
}