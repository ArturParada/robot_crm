*** Settings ***
Documentation    This is some basic info
Resource    ../Resources/crm.robot
Resource    ../Resources/common.robot

*** Variables ***




*** Test Cases ***
Should be able to add new customer
    [Documentation]     This is some basic info about the test
    [Tags]              1006    Smoke   Contacts

    Common.Begin Web Test
    Crm.Should Go to Sing in Page
    Crm.Should login
    Crm.Should add new custome
    Common.Should end test


