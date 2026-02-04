Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: Successfully track a shipped order
    Given User is on the order tracking page
    When User enters order number "ORD23456"
    And User clicks the Track Order button
    Then The order status should display "Your order ORD23456 is Shipped."
