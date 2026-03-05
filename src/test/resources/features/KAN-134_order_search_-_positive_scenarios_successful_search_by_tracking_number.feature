Feature: Order Search - Positive Scenarios

  Scenario: Successful Search by Tracking Number
    Given I am on the Order Search page
    And the error message area is hidden
    And the order details area is hidden
    When I select "Tracking Number" from the search type dropdown
    And I enter "TRK67890" into the order ID input field
    And I click the "Search" button
    Then the order details area should display "987 Pine Ln, Otherville, USA"
    And the order details area should display "654 Birch Rd, Otherville, USA"
    And the order details area should display "2024-01-15"
    And the order details area should be visible
    And the error message area should be hidden
