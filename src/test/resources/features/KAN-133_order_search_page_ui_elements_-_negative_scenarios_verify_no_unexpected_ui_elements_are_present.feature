Feature: Order Search Page UI Elements - Negative Scenarios

  Scenario: Verify no unexpected UI elements are present
    Given I navigate to "http://localhost:7070/"
    Then I should not see an element with text "Confidential Data"
    And I should not see an element with ID "adminPanel"
