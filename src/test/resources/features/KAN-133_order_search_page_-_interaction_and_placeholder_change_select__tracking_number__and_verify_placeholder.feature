Feature: Order Search Page - Interaction and Placeholder Change

  Scenario: Select "Tracking Number" and verify placeholder
    Given I am on the Order Search Page
    When I select "Tracking Number" from the search type dropdown
    Then the "orderIdInput" field should have placeholder "Enter Tracking Number"
