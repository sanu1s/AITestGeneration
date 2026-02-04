Feature: AI Bot Introduction Message Verification - Negative Tests

  Scenario: Verify an irrelevant message is NOT displayed as bot greeting
    Given User navigates to the AI Bot page for negative test
    Then The bot message should NOT display "Order Received Successfully"
