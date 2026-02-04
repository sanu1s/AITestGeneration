Feature: Order Tracking Support Wait Time Message Display - Negative Scenarios

  Scenario: Verify no wait time message for a normally tracked order
    Given User navigates to the order tracking page
    When User enters order number "NORMAL98765"
    And User clicks the "Track Order" button
    Then The status message should not contain "higher than normal volumes"
