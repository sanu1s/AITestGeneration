Feature: Order Tracking - Positive Scenarios

  Scenario: Successful Order Tracking with Valid Order Number
    Given User is on the order tracking page
    When User enters order number "123"
    And User clicks the "Track Order" button
    Then The order status should be "The order status Delayed"
