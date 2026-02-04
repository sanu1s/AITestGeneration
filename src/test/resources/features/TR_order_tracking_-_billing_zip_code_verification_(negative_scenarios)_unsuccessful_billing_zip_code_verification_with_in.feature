Feature: Order Tracking - Billing Zip Code Verification (Negative Scenarios)

  Scenario: Unsuccessful billing zip code verification with incorrect zip code
    Given I am on the order tracking page
    And I enter order number "ORD789"
    And I click the "Track Order" button
    And I am prompted to provide billing zip code
    When I enter billing zip code "00000"
    And I click the "Verify Zip Code" button
    Then the error message should display "Incorrect billing zip code."
