%dw 2.0
output application/json

---
{
	
	parts:  error.description splitBy(/\n/)
	
               
}