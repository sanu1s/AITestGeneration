Feature: AI Bot Introduction Message Verification - Positive Tests

  Scenario: Verify AI Bot assistant identification and agent connection offer are present
    Given User is on the AI Bot page
    Then The bot message should contain "AI Bot Assistant"
    And The bot message should contain "connect you with an agent"
