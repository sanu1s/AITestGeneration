Feature: Order Tracking - Negative Scenarios - Missing Data

  Scenario: Display error when billing zip code is empty
    Given User navigates to the order tracking page
    When User enters order number "ORD67890"
    And User enters billing zip code ""
    And User clicks the "Track Order" button
    Then The error message should display "Billing zip code is required."
