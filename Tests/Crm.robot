*** Settings ***
Documentation    This is some basic info
Library          SeleniumLibrary

*** Variables ***




*** Test Cases ***
Should be able to add new customer
    [Documentation]     This is some basic info about the test
    [Tags]              1006    Smoke   Contacts
    log                 Starting the test cas

    Open Browser        https://automationplayground.com/crm/       chrome

    Set Window Position    x=341     y=196
    Set Window Size         width = 1935    height=1090

    Sleep                   3s
    Close Browser

*** Keywords ***
