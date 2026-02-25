Feature: Order Tracking - Negative Scenarios (Numeric Validation)

  Scenario: Attempt to track order with mixed alphanumeric characters
    Given User is on the Order Tracking page
    When User enters order number "ORD123"
    And User clicks the "Track Order" button
    Then The error message should display "Order Number must be numeric"
