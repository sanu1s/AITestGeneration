Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully Track a Valid Order Number
    Given User is on the order tracking page
    When User enters order number "12345"
    And User clicks the "Track Order" button
    Then The order status should be "The order status Delayed"
