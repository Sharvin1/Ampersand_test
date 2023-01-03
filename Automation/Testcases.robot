*** Settings ***
Resource    ../Automation/Keywords.robot
Library     SeleniumLibrary

*** Test Cases ***
#Scenario 1: Ik ga naar alphanumeric component en schakel de 'can read' uit
Scenario 1
    Given I go to localhost:4200
    When I go the navigationbar and click on tools
    And I click on the component Alphanumeric
    And I disable the toggle 'can read'
    Then I validate the toggle 'can read' on the inputfield and text

Scenario 2
    Given I go to localhost:4200
    When I go the navigationbar and click on tools
    And I click on the component Alphanumeric
    And I disable the toggle 'can update'
    Then I validate the toggle 'can update' on the inputfield and text

Scenario3
    Given I go to localhost:4200
    When I go the navigationbar and click on tools
    And I click on the component Bigalphanumeric
    And I disable the toggle 'can read'
    Then I validate the toggle 'can read' on the inputfield and text

Scenario 999: Zoek het kanaal van rtlnieuws en klik op een video
    Given Ik Ga Naar Google
    When Ik Typ In Youtube En Druk Enter
    And Ik Druk De Zoekresultaat Youtube
    And Ik Weiger De Cookies Op Youtube.com
    And Ik Typ Rtl Nieuws In Het Zoekveld Van Youtube
    And Ik Druk Op Het Kanaal Van Rtl Nieuws
    Then Ik Druk Op Een Video