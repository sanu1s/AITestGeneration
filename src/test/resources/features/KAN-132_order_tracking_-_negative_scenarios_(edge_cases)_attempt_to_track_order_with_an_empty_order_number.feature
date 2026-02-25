Feature: Order Tracking - Negative Scenarios (Edge Cases)

  Scenario: Attempt to track order with an empty order number
    Given User is on the Order Tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The error message should display "Order Number must be numeric"
