Feature: AI Bot Welcome Message Verification - Positive Scenarios

  Scenario: Verify another scenario where the bot introduces itself (if applicable, though only one message provided)
    Given User is on the AI Bot assistant page
    Then The welcome message should contain "AI Bot Assistant"
