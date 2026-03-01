Feature: Order Search Page UI Verification (Positive Scenarios)

  Scenario: Verify selecting 'Tracking Number' in the search type dropdown
    Given I navigate to the Order Search page
    When I select "Tracking Number" from the search type dropdown with ID "searchType"
    Then the search type dropdown with ID "searchType" should have "Tracking Number" selected
    And the input field with ID "orderIdInput" should still be visible
