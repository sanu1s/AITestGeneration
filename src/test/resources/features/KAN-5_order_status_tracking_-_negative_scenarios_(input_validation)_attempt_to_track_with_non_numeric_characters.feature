Feature: Order Status Tracking - Negative Scenarios (Input Validation)

  Scenario: Attempt to track with non-numeric characters
    Given User is on the Order Tracking page
    When User enters order number "abc"
    And User clicks the Track Order button
    Then The error message should display "Order number must be numeric"
