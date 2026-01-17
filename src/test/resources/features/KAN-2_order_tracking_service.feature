Feature: Order Tracking Service

  Scenario: Successfully track a delayed order with specific order number
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should be "Delayed"
    And The result should display "Delivery Date"
