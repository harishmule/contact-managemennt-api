%dw 2.0
output application/java
---
{
	"type": if(((vars.errorPayload.fieldName default "")))
    			"HTTP:NOT_FOUND"	// we receive HTTB:BAD_REQUEST from the backend which is not quite appropriate for this usecase.
			else
    			vars.error.'type',   // we just keep the default value
	"message": if (isBlank(vars.errorPayload.message))
				"No further details provided by External Service"
			else if (isBlank(vars.errorPayload.fieldName))
				vars.errorPayload.message	
			else	
				vars.errorPayload.fieldName ++ ": " ++ vars.errorPayload.message
	
               
}