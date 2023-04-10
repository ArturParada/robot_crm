*** Settings ***
Library          SeleniumLibrary
*** Keywords ***
Begin Web Test
    Open Browser            https://automationplayground.com/crm/       chrome
    Maximize Browser Window

Should end test
    Sleep                   3s
    Close Browser