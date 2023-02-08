*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Resource   Automation/Keywords/01_Homepage/Homepage.robot
Resource   Automation/Keywords/03_ActiveProjects/01TestSteps_ActiveProjects.robot

*** Test Cases ***
Scenario 1 : Test Alphanumeric elements
    Given User Navigates Homepage
    And User navigates ActiveProjects Page
    Then User clicks Apollo13
    Then User clicks Alfaboard
    Then User clicks Betaboard
    Then User clicks Argos

Scenario 2 : Test creating a project
    Given User Navigates Homepage
    And User navigates ActiveProjects Page
    Then User clicks chevron
