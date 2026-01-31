Feature: Order Status Tracking - Negative Scenarios: Input Validations

  Scenario: Display error for mixed alphanumeric order number
    Given User is on the order tracking page
    When User enters order number "123AB"
    And User clicks the "Track Order" button
    Then The error message should display "Order number must be numeric"
