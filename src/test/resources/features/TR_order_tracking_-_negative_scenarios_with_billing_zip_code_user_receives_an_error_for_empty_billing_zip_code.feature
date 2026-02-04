Feature: Order Tracking - Negative Scenarios with Billing Zip Code

  Scenario: User receives an error for empty billing zip code
    Given User is on the order tracking page
    When User enters order number "ORDER123"
    And User leaves billing zip code empty
    And User clicks the "Track Order" button
    Then The error message should display "Billing zip code is required."
