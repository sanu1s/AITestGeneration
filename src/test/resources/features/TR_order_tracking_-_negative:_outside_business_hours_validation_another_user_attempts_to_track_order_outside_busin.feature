Feature: Order Tracking - Negative: Outside Business Hours Validation

  Scenario: Another user attempts to track order outside business hours
    Given User is on the order tracking page
    When User enters order number "ORDABC"
    And User clicks the "Track Order" button
    Then The error message should display "We’re sorry you have reached us outside of our business hours."
