Feature: Order Tracking - Negative Scenarios with Billing Zip Code Verification

  Scenario: Display error for invalid billing zip code after order number
    Given I am on the order tracking page
    When I enter order number "ORD12345"
    And I click the "Track Order" button
    Then I should be prompted for the billing zip code
    When I enter billing zip code "99999"
    And I click the "Track Order" button
    Then the error message should display "Incorrect billing zip code for ORD12345."
