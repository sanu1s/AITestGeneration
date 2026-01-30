Feature: Order Status Tracking - Positive Test Cases

  Scenario: Successfully track a valid order number
    Given User is on the order tracking page
    When User enters order number "12345"
    And User clicks the "Track Order" button
    Then The order status should display "The order status Delayed"
