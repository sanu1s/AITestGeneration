Feature: Order Tracking Functionality - Negative Scenarios

  Scenario: Attempt to track an order with an invalid order number
    Given user is on the order tracking page
    When user enters order number "INVALID999"
    And user clicks the "Track Order" button
    Then the error message should display "Order not found. Please check your order number."
