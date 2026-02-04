Feature: Order Tracking - Negative: Outside Business Hours Validation

  Scenario: User attempts to track order with a valid number outside business hours
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the Track Order button
    Then The error message should display "We’re sorry you have reached us outside of our business hours."
