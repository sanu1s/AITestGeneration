Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully track a valid order number from transcript
    Given User is on the order tracking page
    When User enters order number "0061845946"
    And User clicks the "Track Order" button
    Then The order status should display "Order Shipped"
