Feature: Order Tracking - Negative Scenarios - Invalid Data

  Scenario: Display error for invalid order number
    Given User navigates to the order tracking page
    When User enters order number "INVALID123"
    And User enters billing zip code "90210"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check the order number."
