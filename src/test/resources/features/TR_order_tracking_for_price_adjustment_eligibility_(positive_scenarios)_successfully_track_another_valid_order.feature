Feature: Order Tracking for Price Adjustment Eligibility (Positive Scenarios)

  Scenario: Successfully track another valid order
    Given User is on the order tracking page
    When User enters order number "ORD23456"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORD23456 found. Status: Shipped."
