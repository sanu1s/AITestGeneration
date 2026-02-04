Feature: AI Bot Welcome Message Display (Positive Cases)

  Scenario: Verify bot role is mentioned in the welcome message
    Given User navigates to the order tracking page
    Then The status message should contain "AI Bot Assistant"
