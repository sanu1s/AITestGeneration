Feature: OrderQuest UI Elements Validation - Negative Scenarios

  Scenario: Verify non-existent elements are not visible
    Given I am on the Order Search Page
    Then the "Error Section" section should be "hidden"
    And the "NonExistentButton" section should be "hidden"
