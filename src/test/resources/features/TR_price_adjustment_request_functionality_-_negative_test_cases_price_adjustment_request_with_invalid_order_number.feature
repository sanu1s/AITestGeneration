Feature: Price Adjustment Request Functionality - Negative Test Cases

  Scenario: Price Adjustment Request with Invalid Order Number
    Given User is on the Price Adjustment Request page
    When User enters order number "INVALID999"
    And User clicks the "Submit Price Adjustment" button
    Then An error message should display "Order not found. Please check your order number."
