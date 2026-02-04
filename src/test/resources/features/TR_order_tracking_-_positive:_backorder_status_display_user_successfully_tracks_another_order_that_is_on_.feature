Feature: Order Tracking - Positive: Backorder Status Display

  Scenario: User successfully tracks another order that is on backorder
    Given User is on the order tracking page
    When User enters order number "BACKORDER_456"
    And User clicks the Track Order button
    Then The status message should display "Your order is currently on backorder. Here are the details:"
