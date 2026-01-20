Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track with an order number less than 12 digits
    Given User navigates to the order tracking page
    When User enters order number "12345"
    And User clicks the 'Track Order' button
    Then The error message should display "Invalid Order Number. Please enter a 12-digit numeric order number."
