Feature: UI Interactions and State Transitions

  Scenario: Change Search Type to Tracking Number
    Given I am on the Order Search Page
    When I select "Tracking Number" from the search type dropdown
    Then the "Tracking Number" field's placeholder should be "Enter Tracking Number"
    And the "searchType" dropdown should display "Tracking Number"
    And the "orderDetails" section should be "hidden"
    And the "error" section should be "hidden"
