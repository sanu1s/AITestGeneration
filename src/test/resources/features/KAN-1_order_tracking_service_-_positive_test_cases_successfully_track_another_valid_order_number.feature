Feature: Order Tracking Service - Positive Test Cases

  Scenario: Successfully track another valid order number
    Given User is on the Order Tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The order status should display "The order status Delayed"
