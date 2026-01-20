Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track with a non-numeric order number
    Given User navigates to the order tracking page
    When User enters order number "INVALIDORDER"
    And User clicks the 'Track Order' button
    Then The error message should display "Invalid Order Number. Please enter a 12-digit numeric order number."
