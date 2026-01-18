Feature: Order Tracking

  Scenario: Successful Order Tracking for a Delayed Order
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should be "Delayed"
    And The delivery date should be displayed
