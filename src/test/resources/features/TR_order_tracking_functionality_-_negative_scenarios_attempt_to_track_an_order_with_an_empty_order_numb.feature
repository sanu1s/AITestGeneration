Feature: Order Tracking Functionality - Negative Scenarios

  Scenario: Attempt to track an order with an empty order number field
    Given User is on the order tracking page "https://www.example.com/order-tracking"
    When User leaves the order number field empty
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
