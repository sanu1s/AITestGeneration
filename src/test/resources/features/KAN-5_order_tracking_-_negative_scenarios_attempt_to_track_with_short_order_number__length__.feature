Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to Track with Short Order Number (Length < 2)
    Given User is on the order tracking page
    When User enters order number "1"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order No"
