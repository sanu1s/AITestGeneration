Feature: Order Tracking - Negative Test Cases - Outside Business Hours

  Scenario: Verify error message when tracking an order outside business hours (Scenario 2)
    Given User is on the order tracking page
    When User enters order number "ORD98765"
    And User clicks the "Track Order" button
    Then The error message should display "We’re sorry you have reached us outside of our business hours."
