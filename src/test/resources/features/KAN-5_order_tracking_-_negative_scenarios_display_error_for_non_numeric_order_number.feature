Feature: Order Tracking - Negative Scenarios

  Scenario: Display error for non-numeric order number
    Given User is on the order tracking page
    When User enters order number "ABC"
    And User clicks on "Track Order" button
    Then The error message should display "Order number must be numeric"
