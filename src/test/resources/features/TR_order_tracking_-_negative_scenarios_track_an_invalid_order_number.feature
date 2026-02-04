Feature: Order Tracking - Negative Scenarios

  Scenario: Track an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID999"
    And User clicks the "Track Order" button
    Then The error message should display "Order INVALID999 not found. Please check your order number."
