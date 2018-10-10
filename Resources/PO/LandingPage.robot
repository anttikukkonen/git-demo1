*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Load
    Go to     http://www.amazon.com

Verify Page Loaded
    Wait Until Page Contains   Your Amazon.com
    [Return]    Found it!