Feature: Billing Zip Code Order Retrieval - Negative Cases

  Scenario: Display error for invalid billing zip code format
    Given User is on the order details retrieval page
    When User enters billing zip code "ABCDE"
    And User clicks the "Retrieve Details" button
    Then An error message should display "Invalid billing zip code format. Please try again."
