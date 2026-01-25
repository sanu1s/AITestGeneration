Feature: OrderTrackingService

  Scenario: Attempt to track an order with an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then An error message should display "Order not found. Please check the order number."
    And The current URL should be "http://127.0.0.1:8000/order/tracking"
