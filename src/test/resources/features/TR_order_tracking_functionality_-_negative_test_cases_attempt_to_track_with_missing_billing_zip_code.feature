Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Attempt to track with missing billing zip code
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User enters billing zip code ""
    And User clicks the "Track Order" button
    Then The error message should display "Billing zip code cannot be empty."
