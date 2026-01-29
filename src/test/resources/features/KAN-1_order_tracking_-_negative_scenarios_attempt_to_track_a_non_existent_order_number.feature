Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track a non-existent order number
    Given User is on the Order Tracking page
    When User enters order number "NONEXIST"
    And User clicks the "Track Order" button
    Then The result should display "Order 'NONEXIST' not found."
