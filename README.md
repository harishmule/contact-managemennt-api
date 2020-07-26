##########################################################
- Welcome to  "contact-management-api"
- This API is used to manage the contacts in database
- We used mysql database for this implementation
##########################################################
- This API is implemented by using below
	* Mule4
	* Runtime version 4.2.2
	* RAML (Inncluding Libraries & Traits)
	* API KIT router
	* HTTPS Listener
	* DB Connector
##########################################################
- We have the below resources implemented 
	* Get All Contacts
	* Add Contact
	* Get Contact by ContactId
	* Update Contact by ContactId
	* Delete Contact by ContactId
############################################################
- Getting started
	1) clone project 
	2) Import jar into anypoint studio 7 (mule 4)
	3) Make sure you'll get all files
	4) Configure the MySQL DB
	5) Pass the below arguments in runtime orguments
		* -Dmule.env=local
		* -Dencryption.key=password
	4) Right click the application and RUN
	5) URL: https://localhost:8080/api/v1/*
	6) Required headers
		* "x-correlation-id"
		* "cliennt_id"
		* "client_secret"
##########################################################
REST SERVICES (Please check the files in email for request responses and postman scripts)
	1) POST: https://localhost:8080/api/contacts --> To create a contact in DB
	2) GET: https://localhost:8080/api/contacts --> To get all contacts
	3) GET: https://localhost:8080/api/contacts/{contactId} --> To get single contact by contactId 
	4) PUT: https://localhost:8080/api/contacts/{contactId} --> To update a contact in DB
	5) DELETE: https://localhost:8080/api/contacts/{contactId} --> To delete a contact in DB
##########################################################
- Some points/notes:
	* Used HTTPS listener and key store certificate is available in "certs" folder.
		{
  "firstName": "Bob",
  "lastName": "Frederick",
  "dob": "06/21/1980",
  "gender": "M",
  "title": "mr",
  "email": "mainn@mule.com",
  "phone": "1234567890",
  "preferred": "email",
  "addressType": "home",
  "addressNumber": 124,
  "address": "123 mainn street",
  "addressUnit": "1a",
  "addressCity": "edison",
  "addressState": "NJ",
  "adressZipcode": 8820,
  "addressType1": "home",
  "addressNumber1": 124,
  "address1": "123 mainn street",
  "addressUnit1": "1a",
  "addressCity1": "edison",
  "addressState1": "NJ",
  "adressZipcode1": 8820
}
	* Used secure property place holder.
	* Encrypted the port (8080).
	* For update and create requests, the dwl files are saved in mappings folder.
	* Attached screenshots of the responses and files in email

