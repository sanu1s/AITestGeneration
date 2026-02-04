Feature: Order Tracking - Positive Scenarios for Payment Status

  Scenario: Track order with Charged Status
    Given User is on the order tracking page
    When User enters order number "ORD_CHARGED_456"
    And User clicks the "Track Order" button
    Then The order status should display "Order charged, items in stock."
