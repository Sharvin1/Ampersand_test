
*** Settings ***
Library     SeleniumLibrary
Resource    Automation/Keywords/01_Homepage/Homepage.robot
Library    BuiltIn

*** Test Cases ***
Scenario 01: User navigates homepage
    Given User navigates homepage


