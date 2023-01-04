*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Resource   Automation/Keywords/01_Homepage/Homepage.robot
Resource   Automation/Keywords/02_Tools/01TestStep_Alphanumeric.robot



*** Test Cases ***
Scenario 1 : Test Alphanumeric elements
    Given User Navigates Homepage
    And User navigates Tools Page
#    Then User clicks Alphanumeric component
#    Then User checks Can Create
#    And User checks Can Read
#    Then User checks Can Update
#    Then User checks Can Delete
#    Then User checks Expression is univalent
#    Then User checks Expression is total

#*** Keywords ***
