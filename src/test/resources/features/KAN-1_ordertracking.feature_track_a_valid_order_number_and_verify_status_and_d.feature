Feature: OrderTracking.feature

  Scenario: Track a valid order number and verify status and delivery date
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And Clicks the "Track Order" button
    Then The order status should be "Delayed"
    And The result should contain "Delivery Date"
