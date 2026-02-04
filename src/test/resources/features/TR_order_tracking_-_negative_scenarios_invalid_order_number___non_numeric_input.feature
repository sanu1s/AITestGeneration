Feature: Order Tracking - Negative Scenarios

  Scenario: Invalid Order Number - Non-numeric input
    Given User is on the Order Tracking page
    When User enters order number "What is the item?"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format."
