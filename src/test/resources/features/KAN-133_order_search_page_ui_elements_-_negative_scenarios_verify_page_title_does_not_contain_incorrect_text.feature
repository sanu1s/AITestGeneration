Feature: Order Search Page UI Elements - Negative Scenarios

  Scenario: Verify page title does not contain incorrect text
    Given I navigate to "http://localhost:7070/"
    Then the page title should not be "Admin Dashboard"
