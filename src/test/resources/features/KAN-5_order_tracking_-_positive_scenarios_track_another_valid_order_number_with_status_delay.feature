Feature: Order Tracking - Positive Scenarios

  Scenario: Track another valid order number with status Delayed
    Given User is on the Order Tracking page
    When User enters order number "99"
    And User clicks the Track Order button
    Then The order status should display "The order status Delayed"
