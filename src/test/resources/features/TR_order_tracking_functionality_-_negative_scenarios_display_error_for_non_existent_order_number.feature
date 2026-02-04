Feature: Order Tracking Functionality - Negative Scenarios

  Scenario: Display error for non-existent order number
    Given User is on the order tracking page
    When User enters order number "NONEXISTENT999"
    And User clicks the "Track Order" button
    Then The error message should display "Order NONEXISTENT999 not found."
