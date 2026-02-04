Feature: Order Tracking - Positive Test Cases

  Scenario: Verify 'Preparing to ship' status for a valid order
    Given User is on the order tracking page
    When User enters order number "ORDER1001"
    And User clicks the Track Order button
    Then The status message should display "Preparing to ship"
