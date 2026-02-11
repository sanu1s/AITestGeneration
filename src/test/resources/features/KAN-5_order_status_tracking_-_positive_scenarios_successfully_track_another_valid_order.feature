Feature: Order Status Tracking - Positive Scenarios

  Scenario: Successfully track another valid order
    Given User is on the order tracking page
    When User enters order number "98765"
    And User clicks the 'Track Order' button
    Then The status message should display "The order status Delayed"
