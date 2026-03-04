Feature: OrderQuest Initial Search Results Area State (Positive)

  Scenario: Verify the search results area is initially empty and not visible
    Given I am on the OrderQuest page
    Then the search results area should be empty
    And the search results area should not be visible
