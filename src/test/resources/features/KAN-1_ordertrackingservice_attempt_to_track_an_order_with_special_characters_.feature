Feature: OrderTrackingService

  Scenario: Attempt to track an order with special characters in the order number
    Given User is on the order tracking page
    When User enters order number "ORD#@!123"
    And User clicks the "Track Order" button
    Then An error message should display "Invalid order number format."
    And The current URL should be "http://127.0.0.1:8000/order/tracking"
