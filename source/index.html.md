---
title: API Reference

language_tabs: # must be one of https://git.io/vQNgJ
  - ruby

toc_footers:

includes:
  - errors

search: true
---

# Introduction
PUT: Complete overrides the record  
POST: Creates a new record  
PATCH: Updates a record based on provided information, leaving not passed fields intact  
# Authentication

> To authorize, use this code:

> Make sure to replace `keykeykey` with your API key.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aenean euismod elementum nisi quis eleifend quam adipiscing.

Sit amet venenatis urna cursus eget nunc scelerisque viverra. Sit amet porttitor eget dolor morbi non arcu risus.

`Authorization: keykeykey`

<aside class="notice">
You must replace <code>keykeykey</code> with your personal API key.
</aside>

# Households

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aenean euismod elementum nisi quis eleifend quam adipiscing. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Sit amet porttitor eget dolor morbi non arcu risus.

## Create a Household

> The above command returns JSON structured like this:

```json
{
  "id": 2,
  "guid": "5b6cba42-2558-46b0-9300-bdb53267528f"
}
```

This endpoint creates a new household.

###HTTP Request
`POST http://harmoniciq.com/api/households`

<aside class="success">
The reason to have a home is to keep certain people in and everyone else out.
</aside>

## Get info about a specific household

> The above command returns JSON structured like this:

```json
[
  {
    "id": 1,
    "guid": "35e6f06c-b3fc-410d-989e-fc529b582887"
  },
  {
    "id": 7,
    "street": "321 Maple Street",
    "state": "Kansas",
    "country": "United States of America",
    "city": "Smallville",
    "zip": "67524"
  },
  {
    "id": 1,
    "first_name": "Clark",
    "last_name": "Kent",
    "birthday": "10 Jun 1950",
    "height": 74,
    "weight": 220,
    "gender": "Male",
    "SSN": "XXXX",
    "drivers_license": "XXXXXXXX",
    "citizenship": "honorary citizenship",
    "email": "imnotsu@perman.com",
    "relationship": "primary"
  }  
]
```
This endpoint retrieves info about specific household  
###HTTP Request
`GET http://harmoniciq.com/api/households/:id `

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the household to retrieve

<aside class="success">
includes current address and information about the account holder
</aside>

## Update a specific household
```json
[
  {
    "id": 1,
    "guid": "35e6f06c-b3fc-410d-989e-fc529b582887"
  }
]
```
> The above command returns JSON structured like this:

```json
[
  {
    "id": 1,
    "guid": "35e6f06c-b3fc-410d-989e-fc529b582887"
  }
]
```
This endpoint updates a specific household.
###HTTP Request
`PATCH http://harmoniciq.com/api/households/:id `
### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the household to retrieve
##Delete a Household
> The above command returns JSON structured like this:

```json
{
  "id": 2,
  "guid" : "deleted_WyTNnktArT"
}
```

This endpoint deletes a specific household.

### HTTP Request
`DELETE http://harmoniciq.com/api/households/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the household to delete

# Addresses
##Create an address
  > This command accepts JSON structured like this:  

  ```json
  [
    {
      "street": "321 Maple Street",
      "state": "Kansas",
      "country": "United States of America",
      "city": "Smallville",
      "zip": "67524"
    }
  ]
  ```

  This endpoint creates a address for a specific household
###HTTP Request
`POST http://harmoniciq.com/api/households/:id/addresses`

##Delete an address
> This command returns JSON structured like this:  

```json
[
  {
    "street": "deleted_321 Maple Street",
    "state": "Kansas",
    "country": "United States of America",
    "city": "Smallville",
    "zip": "67524"
  }
]
```
This endpoints retires a specific address.
###HTTP Request
`DELETE http://harmoniciq.com/api/households/addresses/:id`

# People
##Create a person
> This command accepts JSON structured like this:  

```json
[
  {
    "id": 1,
    "first_name": "Clark",
    "last_name": "Kent",
    "birthday": "10 Jun 1950",
    "height": 74,
    "weight": 220,
    "gender": "Male",
    "SSN": "XXXX",
    "drivers_license": "XXXXXXXX",
    "citizenship": "honorary citizenship",
    "relationship": "primary"
  }
]
```
This endpoints create a person in a household
###HTTP Request
`POST http://harmoniciq.com/api/households/:id/people`
<aside class="success">
The first person created in the household becomes the primary.  
{relationship: "primary"}
is required when adding new people to a household
{relationship: "spouse"}
</aside>

##Get info about all people in a household
> This command returns JSON structured like this:  

```json
[
  {
    "id": 1,
    "first_name": "Clark",
    "last_name": "Kent",
    "birthday": "10 Jun 1950",
    "height": 74,
    "weight": 220,
    "gender": "Male",
    "SSN": "XXXX",
    "drivers_license": "XXXXXXXX",
    "citizenship": "honorary citizenship",
    "relationship": "primary"
  },
  {
    "id": 1,
    "first_name": "Lois",
    "last_name": "Lane",
    "birthday": "17 Aug 1976",
    "height": 72,
    "weight": 155,
    "gender": "Female",
    "SSN": "XXXX",
    "drivers_license": "XXXXXXXX",
    "citizenship": "Citizen",
    "relationship": "spouse"
  }
]
```
This endpoints retrieves all people in a household
###HTTP Request
`GET http://harmoniciq.com/api/households/:id/people`
##Get info about a specific person
> This command returns JSON structured like this:  

```json
[
  {
    "id": 1,
    "first_name": "Clark",
    "last_name": "Kent",
    "birthday": "10 Jun 1950",
    "height": 74,
    "weight": 220,
    "gender": "Male",
    "SSN": "XXXX",
    "drivers_license": "XXXXXXXX",
    "citizenship": "honorary citizenship",
    "relationship": "primary"
  },
  {  
    "id": 4,
    "email": "imnotsu@perman.com"
  },
  {
    "id":6,
    "nicotine_use": false,
    "heath_rating": 10
  }
]
```
This endpoints retrieves a specific person , their email and their risk profile.
###HTTP Request
`GET http://harmoniciq.com/api/households/people/:id`
##Get info about account holder
> This command accepts JSON structured like this:  

```json
[
  {
    "id": 1,
    "first_name": "Clark",
    "last_name": "Kent",
    "birthday": "10 Jun 1950",
    "height": 74,
    "weight": 220,
    "gender": "Male",
    "SSN": "XXXX",
    "drivers_license": "XXXXXXXX",
    "citizenship": "honorary citizenship"
  },
  {  
    "id": 4,
    "email": "imnotsu@perman.com"
  },
  {
    "id":6,
    "nicotine_use": false,
    "heath_rating": 10
  }
]
```
This endpoints retrieves a households account holder, their email and their risk profile.
###HTTP Request
`GET http://harmoniciq.com/api/households/:id/account-holder`
##Update a person
```json
[
  {
    "id": 1,
    "first_name": "Kal-El"
  }
]
```
> request above
  response below

  ```json
  [
    {
      "id": 1,
      "first_name": "Kal-El",
      "last_name": "Kent",
      "birthday": "10 Jun 1950",
      "height": 74,
      "weight": 220,
      "gender": "Male",
      "SSN": "XXXX",
      "drivers_license": "XXXXXXXX",
      "citizenship": "honorary citizenship"
    }
  ]
  ```
This endpoints updates a specific person.
###HTTP Request
`PATCH http://harmoniciq.com/api/households/:id/people/:id`
##Update a person's risk profile
```json
[
  {
    "heath_rating": "8"
  }
]
```
> request above
  response below

  ```json
  [
    {
      "id":6,
      "nicotine_use": false,
      "heath_rating": 8
    }
  ]
  ```
This endpoints updates a specific person.
###HTTP Request
`PATCH http://harmoniciq.com/api/households/:id/people/:id/risk-profile`

##Delete a person
> This command returns JSON structured like this:  

```json
[
  {
    "id": 1,
    "first_name": "deleted_Clark",
    "last_name": "Kent",
    "birthday": "10 Jun 1950",
    "height": 74,
    "weight": 220,
    "gender": "Male",
    "SSN": "XXXX",
    "drivers_license": "XXXXXXXX",
    "citizenship": "honorary citizenship",
  }
]
```
This endpoints retires a specific person.
###HTTP Request
`DELETE http://harmoniciq.com/api/households/:id/people/:id`

# Emails
##Create an email
  > This command accepts JSON structured like this:  

  ```json
  [
    {
      "email": "imnotsu@perman.com"
    }
  ]
  ```

  This endpoint creates a email for a specific user
###HTTP Request
`POST http://harmoniciq.com/api/households/:id/people/:id/emails`

##Delete an email
> This command returns JSON structured like this:  

```json
[
  {
    "email": "deleted_imnotsu@perman.com"
  }
]
```
This endpoints retires a specific email.
###HTTP Request
`DELETE http://harmoniciq.com/api/households/:id/emails/:id`

# Pets
##Create a pet
>This endpoint accepts JSON structured like this:

```json
[
  {
    "id": 1,
    "name": "Krypto",
    "age": 5,
    "gender": "Male",
    "breed": "Lab",
    "type": "Canine"
  }
]
```
his endpoints create a pet in a household
###HTTP Request
`POST http://harmoniciq.com/api/households/:id/pets`
##Get info about all pets in a household
> This command returns JSON structured like this:  

```json
[
  {
    "id": 1,
    "name": "Krypto",
    "age": 5,
    "gender": "Male",
    "breed": "Lab",
    "type": "Canine"
  },
  {
    "id": 2,
    "name": "Streaky",
    "age": 3,
    "gender": "Female",
    "breed": "Shorthair",
    "type": "Feline"
  },
]
```
This endpoints retrieves all pets in a household
###HTTP Request
`GET http://harmoniciq.com/api/households/:id/pets`
##Get info about a specific pet
> This command returns JSON structured like this:  

```json
[
  {
    "id": 1,
    "name": "Krypto",
    "age": 5,
    "gender": "Male",
    "breed": "Lab",
    "type": "Canine"
  }
]
```
This endpoints retrieves a specific pet in a household
###HTTP Request
`GET http://harmoniciq.com/api/households/:id/pets/:id`
##Update a pet
```json
[
  {
    "id": 1,
    "age": 6,
  }
]
```
> request above
  response below

  ```json
  [
    {
      "id": 1,
      "name": "Krypto",
      "age": 6,
      "gender": "Male",
      "breed": "Lab",
      "type": "Canine"
    }
  ]
  ```
This endpoints updates a specific pet.
###HTTP Request
`PATCH http://harmoniciq.com/api/househlds/:id/pets/:id`
##Delete a pet
> This command returns JSON structured like this:  

```json
[
  {
    "id": 1,
    "name": "deleted_Krypto",
    "age": 5,
    "gender": "Male",
    "breed": "Lab",
    "type": "Canine"
  }
]
```
This endpoints retires a specific pet.
###HTTP Request
`DELETE http://harmoniciq.com/api/households/:id/pets/:id`
