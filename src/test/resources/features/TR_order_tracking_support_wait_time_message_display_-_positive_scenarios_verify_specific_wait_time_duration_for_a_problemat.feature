Feature: Order Tracking Support Wait Time Message Display - Positive Scenarios

  Scenario: Verify specific wait time duration for a problematic order
    Given User navigates to the order tracking page
    When User enters order number "ISSUE67890"
    And User clicks the "Track Order" button
    Then The status message should contain "1-2 minutes"
