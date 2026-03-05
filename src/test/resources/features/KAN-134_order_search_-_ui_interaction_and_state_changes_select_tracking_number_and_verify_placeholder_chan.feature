Feature: Order Search - UI Interaction and State Changes

  Scenario: Select Tracking Number and verify placeholder change
    Given I am on the Order Search Page
    When I select "Tracking Number" from the search type dropdown
    Then the "orderIdInput" field should have placeholder "Enter Tracking Number"
