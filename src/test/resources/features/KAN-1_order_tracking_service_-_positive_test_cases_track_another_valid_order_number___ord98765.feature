Feature: Order Tracking Service - Positive Test Cases

  Scenario: Track another valid order number - ORD98765
    Given User is on the order tracking page
    When User enters order number "ORD98765"
    And User clicks the "Track Order" button
    Then The order status should display "The order status Delayed"
