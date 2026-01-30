Feature: Order Status Validation - Negative Scenarios

  Scenario: Verify error message for another order number less than 2 characters
    Given User is on the order tracking page
    When User enters order number "A"
    And User clicks on "Track Order" button
    Then The error message should display "Invalid Order No"
