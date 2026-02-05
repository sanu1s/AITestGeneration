Feature: Price Adjustment Related Order Tracking - Positive Scenarios

  Scenario: User successfully tracks an order to check eligibility for price adjustment
    Given User is on the order tracking page
    When User enters order number "ORD45678"
    And User clicks the Track Order button
    Then The order status should display "Order ORD45678 is Processed. Item 'Product A' currently on sale."
