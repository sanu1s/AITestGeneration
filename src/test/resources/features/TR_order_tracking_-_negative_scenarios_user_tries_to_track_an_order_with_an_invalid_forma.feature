Feature: Order Tracking - Negative Scenarios

  Scenario: User tries to track an order with an invalid format
    Given User is on the order tracking page
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format."
