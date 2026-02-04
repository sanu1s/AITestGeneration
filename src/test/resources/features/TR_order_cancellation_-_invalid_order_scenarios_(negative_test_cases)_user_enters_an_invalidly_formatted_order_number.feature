Feature: Order Cancellation - Invalid Order Scenarios (Negative Test Cases)

  Scenario: User enters an invalidly formatted order number
    Given User is on the order processing page
    When User enters order number "INVALID#"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format. Please enter a valid number."
