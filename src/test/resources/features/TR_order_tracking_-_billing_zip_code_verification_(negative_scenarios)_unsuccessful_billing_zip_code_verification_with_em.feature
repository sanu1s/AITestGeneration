Feature: Order Tracking - Billing Zip Code Verification (Negative Scenarios)

  Scenario: Unsuccessful billing zip code verification with empty zip code
    Given I am on the order tracking page
    And I enter order number "ORD012"
    And I click the "Track Order" button
    And I am prompted to provide billing zip code
    When I leave the billing zip code empty
    And I click the "Verify Zip Code" button
    Then the error message should display "Billing zip code cannot be empty."
