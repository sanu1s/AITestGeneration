Feature: Order Tracking with Billing Zip Code - Negative Scenarios

  Scenario: Display error for missing billing zip code
    Given User is on the order tracking page
    When User enters order number "ORD98765" and leaves billing zip code empty
    And User clicks the "Track Order" button
    Then The error message should display "Billing zip code is required."
