Feature: Order Quest Page UI Elements (Positive Scenarios)

  Scenario: Verify result display areas are present and empty initially
    Given I navigate to "http://localhost:7070"
    Then I should see a section with ID "orderDetails"
    And the section with ID "orderDetails" should be empty
    And I should see a section with ID "displayStatus"
    And the section with ID "displayStatus" should be empty
    And I should see a section with ID "error"
    And the section with ID "error" should be empty
