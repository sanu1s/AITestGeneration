Feature: Order Tracking - Negative Scenarios (Outside Business Hours)

  Scenario: Verify system message when tracking an order outside business hours with another valid order number
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The error message should display "Unfortunately, it seems we are currently outside of our business hours."
