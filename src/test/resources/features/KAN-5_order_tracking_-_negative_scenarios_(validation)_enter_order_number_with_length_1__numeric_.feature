Feature: Order Tracking - Negative Scenarios (Validation)

  Scenario: Enter order number with length 1 (numeric)
    Given User is on the order tracking page
    When User enters order number "1"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order No"
