Feature: Package Tracking - Negative Scenarios

  Scenario: Attempt to track a package with an invalid order number
    Given User is on the package tracking page
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number. Please try again."
