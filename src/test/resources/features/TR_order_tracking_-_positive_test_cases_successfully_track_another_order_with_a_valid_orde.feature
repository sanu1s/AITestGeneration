Feature: Order Tracking - Positive Test Cases

  Scenario: Successfully track another order with a valid order number
    Given User is on the order tracking page
    When User enters order number "ORD98765"
    And User clicks the "Track Order" button
    Then The order status should display "Your order ORD98765 has been delivered."
