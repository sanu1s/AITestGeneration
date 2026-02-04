Feature: AI Bot Assistant Introduction and Disclaimer - Negative Test Cases

  Scenario: Verify No Incorrect Welcome Message Displayed
    Given User is on the AI Bot Assistant page
    Then The bot message should NOT display "Hello, this is a robot."
