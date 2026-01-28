Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track a valid order number
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should be "Delayed"
    And The page should display the delivery date
    And The URL should be "http://127.0.0.1:8000/order/tracking"
