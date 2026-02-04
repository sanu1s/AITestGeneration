Feature: Order Tracking System - Positive Test Cases

  Scenario: Successfully track another order with a valid order number
    Given User is on the order tracking page
    When User enters order number "ORD456"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD456 has been shipped."
