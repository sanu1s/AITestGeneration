Feature: Billing Zip Code Order Retrieval - Negative Cases

  Scenario: Display error when billing zip code field is left empty
    Given User is on the order details retrieval page
    When User leaves the billing zip code field empty
    And User clicks the "Retrieve Details" button
    Then An error message should display "Billing zip code is required."
