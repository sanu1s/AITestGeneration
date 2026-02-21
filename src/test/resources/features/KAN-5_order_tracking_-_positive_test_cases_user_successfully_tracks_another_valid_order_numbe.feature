Feature: Order Tracking - Positive Test Cases

  Scenario: User successfully tracks another valid order number
    Given User navigates to the order tracking page
    When User enters order number "98765"
    And User clicks the "Track Order" button
    Then The order status should display "The order status Delayed"
