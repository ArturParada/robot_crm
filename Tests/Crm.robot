*** Settings ***
Documentation    This is some basic info
Library          SeleniumLibrary

*** Variables ***




*** Test Cases ***
Should be able to add new customer
    [Documentation]     This is some basic info about the test
    [Tags]              1006    Smoke   Contacts
    log                 Starting the test cas

    Open Browser            https://automationplayground.com/crm/       chrome
    Maximize Browser Window
    Page Should Contain     Customers Are Priority One!
    Click Link              id=SignIn
    Page Should Contain     Login
    Input Text              id=email-id         randomemail@gmail.com
    Input Password          id=password         random
    Click Button            id=submit-id
    Page Should Contain     Our Happy Customers
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


    Sleep                   3s
    Close Browser

*** Keywords ***
