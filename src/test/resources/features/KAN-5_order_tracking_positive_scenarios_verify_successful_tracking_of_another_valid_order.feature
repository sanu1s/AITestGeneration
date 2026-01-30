Feature: Order_Tracking_Positive_Scenarios

  Scenario: Verify successful tracking of another valid order
    Given User is on the order tracking page
    When User enters order number "98765"
    And User clicks the "Track Order" button
    Then The order status should be displayed as "The order status Delayed"
