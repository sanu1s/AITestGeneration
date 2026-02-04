Feature: Negative Test Cases - Order Tracking Outside Business Hours

  Scenario: Attempt to Track Order Outside Business Hours - Specific Order
    Given User is on the order tracking page at "https://example.com/track-order"
    When User enters order number "ORD98765"
    And User clicks the "Track Order" button
    Then The error message should display "Unfortunately, we are currently outside of our business hours"
