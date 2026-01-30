Feature: Order Status Validation - Negative Scenarios

  Scenario: Verify error message for an empty order number
    Given User is on the order tracking page
    When User leaves the order number empty
    And User clicks on "Track Order" button
    Then The error message should display "Order number must be numeric"
