Feature: Order Tracking - Negative Scenarios

  Scenario: Invalid Order Number - Empty input
    Given User is on the Order Tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The error message should display "Order number is required."
