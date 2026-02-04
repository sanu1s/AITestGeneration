Feature: Order Tracking - Negative Scenarios

  Scenario: Display error for an invalid billing zip code
    Given User is on the order tracking page
    When User enters order number "ORD12345" and billing zip code "99999"
    And User clicks the "Track Order" button
    Then The error message should display "Billing zip code does not match. Please verify."
