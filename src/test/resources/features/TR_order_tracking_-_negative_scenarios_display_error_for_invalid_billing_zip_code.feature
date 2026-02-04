Feature: Order Tracking - Negative Scenarios

  Scenario: Display error for invalid billing zip code
    Given User is on the order tracking page
    When User enters order number "ORD78901" and billing zip code "00000"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Billing Zip Code. Please verify."
