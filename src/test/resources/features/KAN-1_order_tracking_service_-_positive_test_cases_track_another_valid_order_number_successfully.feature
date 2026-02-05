Feature: Order Tracking Service - Positive Test Cases

  Scenario: Track another valid order number successfully
    Given User is on the Order Tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The order status should display "The order status Delayed"
