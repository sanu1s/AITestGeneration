Feature: SearchByTrackingNumber_NegativeScenarios_Validation

  Scenario: Display validation message for empty Tracking Number field
    Given I am on the Order Search Page
    When I select "Tracking Number" from the search type dropdown
    And I enter "" into the "Tracking Number" field
    And I click the "Search" button
    Then the "error" section should be "visible"
    And the "error message" should display "Tracking Number is required"
    And the "Order Details" section should be "hidden"
