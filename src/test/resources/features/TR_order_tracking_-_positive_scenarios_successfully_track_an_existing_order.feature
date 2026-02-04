Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track an existing order
    Given User is on the order tracking page
    When User enters order number "92107"
    And User clicks the "Track Order" button
    Then The order status should display "Order 92107 is Shipped"
