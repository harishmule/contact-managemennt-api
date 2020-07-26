%dw 2.0
output application/json skipNullOn="everywhere"
---
contacts: payload map {
    contactId: $.contactId,
    identification: {
        title: $.title,
        firstName: $.firstName,
        lastName: $.lastName,
        dob: $.dob,
        gender: $.gender
    },
    address: [
        {
            address: $.address,
            addressType: $.addressType,
            addressNumber: $.addressNumber,
            addressUnit: $.addressUnit,
            addressCity: $.addressCity,
            addressState: $.addressState
        },
       ({
            address1: $.address1,
            addressType1: $.addressType1,
            addressNumber1: $.addressNumber1,
            addressUnit1: $.addressUnit1,
            addressCity1: $.addressCity1,
            addressState1: $.addressState1,
        }) if ($.address1 !=null)
    ],
    communication: [
        {
            'type': "email",
            value: $.email,
            preferred: if ($.preferred == "email") true else null
        },
        {
            'type': "phone",
            value: $.phone,
            preferred: if ($.preferred == "phone") true else null
        }
    ]
}
