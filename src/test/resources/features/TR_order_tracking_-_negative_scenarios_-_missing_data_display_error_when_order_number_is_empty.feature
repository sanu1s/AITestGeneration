Feature: Order Tracking - Negative Scenarios - Missing Data

  Scenario: Display error when order number is empty
    Given User navigates to the order tracking page
    When User enters order number ""
    And User enters billing zip code "90210"
    And User clicks the "Track Order" button
    Then The error message should display "Order number is required."
