Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track an existing order with ID 18042
    Given User is on the order tracking page
    When User enters order number "18042"
    And User clicks the "Track Order" button
    Then The order status should display "Order 18042 is Shipped"
