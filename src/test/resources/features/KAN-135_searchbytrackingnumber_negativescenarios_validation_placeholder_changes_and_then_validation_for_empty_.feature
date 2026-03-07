Feature: SearchByTrackingNumber_NegativeScenarios_Validation

  Scenario: Placeholder changes and then validation for empty field
    Given I am on the Order Search Page
    When I select "Tracking Number" from the search type dropdown
    Then the "Tracking Number" field should have placeholder "Enter Tracking Number"
    And I enter "" into the "Tracking Number" field
    And I click the "Search" button
    Then the "error" section should be "visible"
    And the "error message" should display "Tracking Number is required"
    And the "Order Details" section should be "hidden"
