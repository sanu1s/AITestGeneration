Feature: Order Tracking Support Wait Time Message Display - Positive Scenarios

  Scenario: Verify full wait time message for a problematic order
    Given User navigates to the order tracking page
    When User enters order number "PROB12345"
    And User clicks the "Track Order" button
    Then The status message should display "We are currently experiencing higher than normal volumes, and the estimated wait time is about 1-2 minutes. Would you to hold?"
