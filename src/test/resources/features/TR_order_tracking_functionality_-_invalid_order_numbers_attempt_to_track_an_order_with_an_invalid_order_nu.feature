Feature: Order Tracking Functionality - Invalid Order Numbers

  Scenario: Attempt to track an order with an invalid order number
    Given I am on the order tracking page
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check your order number."
