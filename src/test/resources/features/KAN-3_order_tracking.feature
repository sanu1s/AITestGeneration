Feature: Order Tracking

  Scenario: Track a delayed order with specific details
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should be "Delayed"
    And The tracking details should display "Delivery Date"
