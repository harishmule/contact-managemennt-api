%dw 2.0
output application/java
---
// we initialize the error variable using values from the errorImplementation object from mule.
// If for a given error handling use case, the type or message value is not appropriate (for example, we need to improve or create a business error),
// then override it with your own logic. The final handle-error flow with load the final Error object from this variable
{
	"type": error.errorType.namespace ++ ":" ++ error.errorType.identifier,
	"message": (error.description splitBy(/\nTrace/))[0] replace /\"/ with ""
}