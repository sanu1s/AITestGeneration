Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully track a shipped order with a valid order number
    Given User is on the order tracking page
    When User enters order number "OWN12345"
    And User clicks the "Track Order" button
    Then The order status should display "Order OWN12345 is Shipped"
