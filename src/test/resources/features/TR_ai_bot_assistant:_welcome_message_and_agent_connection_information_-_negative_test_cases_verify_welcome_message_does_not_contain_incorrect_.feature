Feature: AI Bot Assistant: Welcome Message and Agent Connection Information - Negative Test Cases

  Scenario: Verify Welcome Message Does Not Contain Incorrect Greeting
    Given User navigates to the AI Bot Assistant page
    Then The bot message should not contain "Hello there!"
