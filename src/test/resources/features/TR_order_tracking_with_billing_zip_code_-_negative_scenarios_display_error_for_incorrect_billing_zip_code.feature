Feature: Order Tracking with Billing Zip Code - Negative Scenarios

  Scenario: Display error for incorrect billing zip code
    Given User is on the order tracking page
    When User enters order number "ORD12345" and billing zip code "00000"
    And User clicks the "Track Order" button
    Then The error message should display "Incorrect billing zip code for order ORD12345"
