Feature: Order Search Page UI Elements Verification (Positive Scenarios)

  Scenario: Verify Search Type Dropdown Options
    Given I navigate to the Order Search page
    When I interact with the search type dropdown
    Then I should see "Order ID" as an option
    And I should see "Tracking Number" as an option
