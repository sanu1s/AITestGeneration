Feature: Order Tracking - Business Hours Validation - Negative Scenarios

  Scenario: User attempts to track an order outside business hours
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The error message should display "We’re sorry you have reached us outside of our business hours."
