Feature: Order Status Tracking - Negative Test Cases and Validations

  Scenario: Display error for non-numeric order number
    Given User is on the order tracking page
    When User enters order number "ABCDE"
    And User clicks the "Track Order" button
    Then The result message should display "Order number must be numeric"
