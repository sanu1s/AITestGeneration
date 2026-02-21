Feature: Order Tracking - Negative Scenarios (Validation)

  Scenario: Submit with mixed numeric and non-numeric order number
    Given User is on the order tracking page
    When User enters order number "123A4"
    And User clicks the "Track Order" button
    Then The result message should display "Order number must be numeric"
