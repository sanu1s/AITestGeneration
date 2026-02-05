Feature: Order Tracking System - Positive Test Cases

  Scenario: Successfully track another existing order
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The order status should display "Order Delivered"
