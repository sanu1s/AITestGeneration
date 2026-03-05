Feature: OrderSearch_UIInteractionAndEdgeCases.feature

  Scenario: Select Tracking Number and Verify Placeholder Change
    Given the application is loaded
    When I select "Tracking Number" from the Search Type dropdown
    Then the input field placeholder should change to "Enter Tracking Number"
    And the Search Type dropdown should be visible with "Tracking Number" selected
    When I enter "TRK12345" into the "Tracking Number" field
    And I click the "Search" button
    Then I should see a validation message indicating "Order number must be numeric"
    And the Error section should be visible
    And the Error Message paragraph should be visible
    And the Order Details section should be empty
