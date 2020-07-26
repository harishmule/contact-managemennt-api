%dw 2.0
output application/java
---
if(((vars.errorPayload.fieldName default "")))
    404
else
    400