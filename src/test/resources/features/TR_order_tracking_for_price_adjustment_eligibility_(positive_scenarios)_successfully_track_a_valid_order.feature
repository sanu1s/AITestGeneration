Feature: Order Tracking for Price Adjustment Eligibility (Positive Scenarios)

  Scenario: Successfully track a valid order
    Given User is on the order tracking page
    When User enters order number "ORD78901"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORD78901 found. Status: Delivered."
