*** Settings ***
Library          SeleniumLibrary



*** Keywords ***

Should Go to Sing in Page
  Page Should Contain     Customers Are Priority One!
    Click Link              id=SignIn
    Page Should Contain     Login

Should login
    Input Text              id=email-id         randomemail@gmail.com
    Input Password          id=password         random
    Click Button            id=submit-id
    Page Should Contain     Our Happy Customers

Should add new custome
    Click Link              id=new-customer

    Input Text                  id=EmailAddress     jakis@mail.com
    Input Text                  id=FirstName        aasddsfa
    Input Text                  id=LastName         zdfdsfs
    Input Text                   id=City            sadfasfa
    Select From List By Value    id=StateOrRegion   AR
    Select Radio Button          gender             male
    Select Checkbox              name=promos-name
    Click Button                 Submit
    Page Should Contain          Success! New customer added.

