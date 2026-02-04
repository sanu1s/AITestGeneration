Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully track an order that was backordered but now available
    Given User is on the order tracking page
    When User enters order number "0042557137"
    And User clicks the "Track Order" button
    Then The order status should display "Order 0042557137 is currently backordered. Item is now in stock and being processed for shipment."
