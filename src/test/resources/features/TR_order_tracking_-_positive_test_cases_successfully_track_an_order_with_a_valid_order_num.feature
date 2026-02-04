Feature: Order Tracking - Positive Test Cases

  Scenario: Successfully track an order with a valid order number
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should display "Your order ORD12345 is currently in transit."
