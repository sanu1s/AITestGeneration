Feature: Transfer Status Tracking - Negative Scenarios

  Scenario: User attempts to track with an invalid transfer number
    Given User is on the order tracking page
    When User enters order number "INVALID_TRN"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Transfer Number. Please check and try again."
