Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: Successful Order Tracking with Valid Order Number
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should display "Order delivered on 2024-01-01"
