Feature: AI Bot Introduction Message Verification - Negative Tests

  Scenario: Verify page does NOT display a generic loading message in greeting area
    Given User is on the AI Bot page for loading check
    Then The bot message should NOT display "Loading..."
