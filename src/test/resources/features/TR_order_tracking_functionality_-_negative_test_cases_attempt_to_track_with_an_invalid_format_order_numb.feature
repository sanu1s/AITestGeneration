Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Attempt to track with an invalid format order number
    Given User is on the order tracking page
    When User enters order number "INVALID"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number format."
