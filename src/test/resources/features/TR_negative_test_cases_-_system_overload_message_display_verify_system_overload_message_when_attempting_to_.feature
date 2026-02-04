Feature: Negative Test Cases - System Overload Message Display

  Scenario: Verify System Overload Message when attempting to Track an Order
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number "VOL_ORD_1001"
    And User clicks the "Track Order" button
    Then The error message should display "We are currently experiencing higher than normal volumes. Please try again later."
