Feature: Order Tracking - Negative Test Cases for Non-Order Inputs

  Scenario: Display error when input resembles a return ID
    Given User is on the order tracking page
    When User enters order number "RMA-12345"
    And User clicks the "Track Order" button
    Then The error message should display "It's not a return"
