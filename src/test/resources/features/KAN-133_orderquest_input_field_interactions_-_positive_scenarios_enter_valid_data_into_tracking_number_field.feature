Feature: OrderQuest Input Field Interactions - Positive Scenarios

  Scenario: Enter valid data into Tracking Number field
    Given I am on the Order Search Page
    And I enter "TRK67890" into the "Tracking Number" field
    And I click the "Search" button
    Then the "Tracking Number" field should have placeholder "Enter Tracking Number"
