%dw 2.0
output application/java
---
{
    firstName: payload.firstName,
    lastName: payload.lastName,
    dob: payload.dob,
    gender: payload.gender,
    title: payload.title,
    email: payload.email,
    phone: payload.phone,
    preferred: payload.preferred,
    addressType: payload.addressType,
    addressNumber: payload.addressNumber,
    address: payload.address,
    addressUnit: payload.addressUnit,
    addressCity: payload.addressCity,
    addressState: payload.addressState,
    adressZipcode: payload.adressZipcode,
    addressType1: payload.addressType1,
    addressNumber1: payload.addressNumber1,
    address1: payload.address1,
    addressUnit1: payload.addressUnit1,
    addressCity1: payload.addressCity1,
    addressState1: payload.addressState1,
    adressZipcode1: payload.adressZipcode1,
    contactId : vars.contactId
    
}