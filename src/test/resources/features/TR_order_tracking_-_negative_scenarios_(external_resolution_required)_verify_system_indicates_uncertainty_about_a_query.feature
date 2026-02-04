Feature: Order Tracking - Negative Scenarios (External Resolution Required)

  Scenario: Verify system indicates uncertainty about a query
    Given User is on the order tracking page
    When User enters order number "UNCERTAIN_QUERY_012"
    And User clicks the Track Order button
    Then The status message should display "I am not sure."
