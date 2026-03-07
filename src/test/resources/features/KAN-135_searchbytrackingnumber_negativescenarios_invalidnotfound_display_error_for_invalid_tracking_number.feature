Feature: SearchByTrackingNumber_NegativeScenarios_InvalidNotFound

  Scenario: Display error for invalid Tracking Number
    Given I am on the Order Search Page
    When I select "Tracking Number" from the search type dropdown
    And I enter "INVALIDTRACK" into the "Tracking Number" field
    And I click the "Search" button
    Then the "error" section should be "visible"
    And the "error message" should display "Tracking information not found"
    And the "Order Details" section should be "hidden"
