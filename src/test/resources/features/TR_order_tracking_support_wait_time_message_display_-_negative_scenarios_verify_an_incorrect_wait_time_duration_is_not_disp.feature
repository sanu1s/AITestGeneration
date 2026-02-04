Feature: Order Tracking Support Wait Time Message Display - Negative Scenarios

  Scenario: Verify an incorrect wait time duration is not displayed for a problematic order
    Given User navigates to the order tracking page
    When User enters order number "PROB12345"
    And User clicks the "Track Order" button
    Then The status message should not contain "5-10 minutes"
