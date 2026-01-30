Feature: Order Status Validation - Positive Scenarios

  Scenario: Verify successful tracking for another valid numeric order number
    Given User is on the order tracking page
    When User enters order number "456"
    And User clicks on "Track Order" button
    Then The order status should be "The order status Delayed"
