Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track a valid order number
    Given user is on the order tracking page
    When User enters order number "123"
    And User clicks the "Track Order" button
    Then The order status should be "The order status Delayed"
