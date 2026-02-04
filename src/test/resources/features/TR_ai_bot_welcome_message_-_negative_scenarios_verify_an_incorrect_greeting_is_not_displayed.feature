Feature: AI Bot Welcome Message - Negative Scenarios

  Scenario: Verify an incorrect greeting is not displayed
    Given User navigates to the AI Bot assistant page
    Then The AI Bot welcome message should not contain "Hello there! I'm a simple chatbot."
