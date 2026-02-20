Feature: Order Tracking - Negative Scenarios (Input Validation)

  Scenario: Track with a single-character order number
    Given User is on the order tracking page
    When User enters order number "A"
    And User clicks the "Track Order" button
    Then The result message should display "Invalid Order No"
