Feature: Order_Tracking_Positive_Scenarios

  Scenario: Verify successful tracking of a valid order
    Given User is on the order tracking page
    When User enters order number "12345"
    And User clicks the "Track Order" button
    Then The order status should be displayed as "The order status Delayed"
