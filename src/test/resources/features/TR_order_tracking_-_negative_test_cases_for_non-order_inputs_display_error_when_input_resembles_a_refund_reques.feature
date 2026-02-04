Feature: Order Tracking - Negative Test Cases for Non-Order Inputs

  Scenario: Display error when input resembles a refund request ID
    Given User is on the order tracking page
    When User enters order number "REFUND-987"
    And User clicks the "Track Order" button
    Then The error message should display "It's not a return"
