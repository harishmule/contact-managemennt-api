%dw 2.0
output application/json skipNullOn="everywhere"
---
{
	contactId: payload[0].contactId,
    identification: {
        title: payload[0].title,
        firstName: payload[0].firstName,
        lastName: payload[0].lastName,
        dob: payload[0].dob,
        gender: payload[0].gender
    },
    address: [
        {
            address: payload[0].address,
            addressType: payload[0].addressType,
            addressNumber: payload[0].addressNumber,
            addressUnit: payload[0].addressUnit,
            addressCity: payload[0].addressCity,
            addressState: payload[0].addressState
        },
        {
            address1: payload[0].address1,
            addressType1: payload[0].addressType1,
            addressNumber1: payload[0].addressNumber1,
            addressUnit1: payload[0].addressUnit1,
            addressCity1: payload[0].addressCity1,
            addressState1: payload[0].addressState1,
        }
    ],
    communication: [
        {
            'type': "email",
            value: payload[0].email,
            preferred: if (payload[0].preferred == "email") true else null
        },
        {
            'type': "phone",
            value: payload[0].phone,
            preferred: if (payload[0].preferred == "phone") true else null
        }
    ]
}