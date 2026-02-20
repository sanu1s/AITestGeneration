Feature: Order Tracking Negative Scenarios

  Scenario: Attempt to track with a short non-numeric order number (length < 2)
    Given User is on the order tracking page
    When User enters order number "A"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order No"
