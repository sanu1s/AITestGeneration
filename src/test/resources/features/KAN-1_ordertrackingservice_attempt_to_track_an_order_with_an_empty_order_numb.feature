Feature: OrderTrackingService

  Scenario: Attempt to track an order with an empty order number
    Given User is on the order tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then An error message should display "Order number cannot be empty."
    And The current URL should be "http://127.0.0.1:8000/order/tracking"
