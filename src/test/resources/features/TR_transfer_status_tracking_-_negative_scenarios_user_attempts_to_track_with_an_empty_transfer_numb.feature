Feature: Transfer Status Tracking - Negative Scenarios

  Scenario: User attempts to track with an empty transfer number
    Given User is on the order tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The error message should display "Transfer Number cannot be empty."
