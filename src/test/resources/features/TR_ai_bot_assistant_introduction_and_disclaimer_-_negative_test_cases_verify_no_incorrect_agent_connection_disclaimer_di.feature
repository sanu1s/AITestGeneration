Feature: AI Bot Assistant Introduction and Disclaimer - Negative Test Cases

  Scenario: Verify No Incorrect Agent Connection Disclaimer Displayed
    Given User is on the AI Bot Assistant page
    Then The bot message should NOT display "I will solve all your problems, no agent needed."
