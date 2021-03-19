# Postalforce - Postal Community
Postal Service includes a demonstration of Custom Objects needed for a sample mail system, called POSTAL SERVICE
It also includes an example of apex code needed for functionality that cannot be achieved declaratively.



## Technologies Used:

Salesforce declaritive methods, including
 - workflows
 - processbuilder
 - flows
 - custom objects

Programatic languages, including
 - apex
 - SOQL
 - SOSL

## Features:

Mail status can be updated by a driver.

Routes can assigned by a mail handler.

Neither the driver nor the mail handler can edit anything other than their specific field on the mail object.

Insured lost mail needs approval from a superior before it can be marked as lost.

Flows and Workflows are used to ensure that every contact has an account.

APEX functions call SOQL quereies as to do quick updates that would be difficult to do delaritvely
(in this case, modify all accounts in California, as we no longer do business in CA)


## To-do list:
creating some kind of page to execute the apex code (right now one has to go in and execute it anonymously).

## Getting Started:

Clone this repo and connect it to an org (recommended: use the salesforce extension with VS Code)

Create tabs for the required objects

Create some sample objects

Create a user for the mail handler/driver profile

Assign some of the objects to the users created

If you log in as the profile, you will see that sharing rules, page layouts, and other security of the org prevent the users from editing anything that they shouldn't


## Licenses:

This project uses at least two salesforce licenses, one for the driver and one for the mail handler. If you wish to demonstrate this project with only one licence (such as in a playground org) you will need to switch between the two profiles.
