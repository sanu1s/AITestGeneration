Feature: Order Tracking - Negative Scenarios

  Scenario: Display error when billing zip code is empty
    Given User is on the order tracking page
    When User enters order number "ORD12345" and billing zip code ""
    And User clicks the "Track Order" button
    Then The error message should display "Billing zip code cannot be empty."
