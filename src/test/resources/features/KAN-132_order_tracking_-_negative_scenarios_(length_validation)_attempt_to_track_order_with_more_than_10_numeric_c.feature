Feature: Order Tracking - Negative Scenarios (Length Validation)

  Scenario: Attempt to track order with more than 10 numeric characters
    Given User is on the Order Tracking page
    When User enters order number "12345678901"
    And User clicks the "Track Order" button
    Then The error message should display "Order Number cannot exceed 10 characters"
