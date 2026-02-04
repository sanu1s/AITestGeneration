Feature: AI Bot Assistant: Welcome Message and Agent Connection Information - Negative Test Cases

  Scenario: Verify Bot Message Does Not Contain Incorrect Agent Information
    Given User navigates to the AI Bot Assistant page
    Then The bot message should not contain "I cannot connect you to an agent."
