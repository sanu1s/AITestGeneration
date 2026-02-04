Feature: Order Tracking - Negative Scenarios with Billing Zip Code Verification

  Scenario: Display error for empty billing zip code after order number
    Given I am on the order tracking page
    When I enter order number "SHIP7890"
    And I click the "Track Order" button
    Then I should be prompted for the billing zip code
    When I leave the billing zip code empty
    And I click the "Track Order" button
    Then the error message should display "Billing zip code is required."
