Feature: OrderSearch_UIInteractionAndEdgeCases.feature

  Scenario: Initial UI State and Default Selections
    Given the application is loaded
    Then the Search Type dropdown should be visible with "Order ID" selected
    And the Order ID input field should be visible with placeholder "Enter Order ID"
    And the Search button should be visible
    And the Order Details section should be visible
    And the Error section should be hidden
    And the Error Message paragraph should be hidden
