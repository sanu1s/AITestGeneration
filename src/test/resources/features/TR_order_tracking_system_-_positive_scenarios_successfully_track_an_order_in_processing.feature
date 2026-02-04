Feature: Order Tracking System - Positive Scenarios

  Scenario: Successfully track an order in processing
    Given User is on the order tracking page
    When User enters order number "PROC12345"
    And User clicks the Track Order button
    Then The order status should display "Order Processing"
