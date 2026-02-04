Feature: Order Tracking - Negative Test Cases for Business Hours

  Scenario: User attempts to track an order outside business hours with an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID987"
    And User clicks the "Track Order" button
    Then The error message should display "We’re sorry you have reached us outside of our business hours."
