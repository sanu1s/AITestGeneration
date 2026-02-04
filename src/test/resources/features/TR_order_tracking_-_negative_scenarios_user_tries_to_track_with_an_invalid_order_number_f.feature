Feature: Order Tracking - Negative Scenarios

  Scenario: User tries to track with an invalid order number format
    Given User is on the order tracking page
    When User enters order number "INVALID_FORMAT!"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format. Please enter a valid order number."
