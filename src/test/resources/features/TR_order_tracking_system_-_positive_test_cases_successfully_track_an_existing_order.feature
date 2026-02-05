Feature: Order Tracking System - Positive Test Cases

  Scenario: Successfully track an existing order
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should display "Order Shipped"
