Feature: Order Tracking with Billing Zip Code - Negative Scenarios

  Scenario: Attempt to track order with an empty billing zip code
    Given User is on the order tracking page
    When User enters order number "ORD98765" and billing zip code ""
    And User clicks the "Track Order" button
    Then The error message should display "Billing zip code cannot be empty."
