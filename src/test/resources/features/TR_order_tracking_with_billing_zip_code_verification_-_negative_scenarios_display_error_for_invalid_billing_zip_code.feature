Feature: Order Tracking with Billing Zip Code Verification - Negative Scenarios

  Scenario: Display error for invalid billing zip code
    Given User is on the order tracking page
    When User enters order number "ORD11223"
    And User enters invalid billing zip code "00000"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid billing zip code provided."
