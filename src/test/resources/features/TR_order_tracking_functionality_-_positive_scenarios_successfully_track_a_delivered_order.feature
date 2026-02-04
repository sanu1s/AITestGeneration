Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: Successfully track a delivered order
    Given User is on the order tracking page
    When User enters order number "ORD78901"
    And User clicks the Track Order button
    Then The order status should display "Your order ORD78901 has been Delivered."
