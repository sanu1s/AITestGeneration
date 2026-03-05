Feature: Order Search Page UI Elements - Positive Test Cases

  Scenario: Verify UI elements when "Tracking Number" is selected
    Given I am on the Order Search Page
    When I select "Tracking Number" from the search type dropdown
    Then the "orderIdInput" field should have placeholder "Enter Tracking Number"
