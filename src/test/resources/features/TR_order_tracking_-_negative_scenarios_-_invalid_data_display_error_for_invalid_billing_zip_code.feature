Feature: Order Tracking - Negative Scenarios - Invalid Data

  Scenario: Display error for invalid billing zip code
    Given User navigates to the order tracking page
    When User enters order number "ORD12345"
    And User enters billing zip code "00000"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid billing zip code for order ORD12345."
