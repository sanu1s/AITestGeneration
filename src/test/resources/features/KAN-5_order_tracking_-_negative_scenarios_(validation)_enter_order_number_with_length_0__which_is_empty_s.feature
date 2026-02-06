Feature: Order Tracking - Negative Scenarios (Validation)

  Scenario: Enter order number with length 0 (which is empty string, covered by 'empty order number')
    Given User is on the order tracking page
    When User enters order number "0"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order No"
