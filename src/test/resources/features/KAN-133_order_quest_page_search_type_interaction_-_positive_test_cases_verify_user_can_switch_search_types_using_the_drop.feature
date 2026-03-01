Feature: Order Quest Page Search Type Interaction - Positive Test Cases

  Scenario: Verify user can switch search types using the dropdown
    Given I am on the Order Quest page
    When I select "Tracking Number" from the search type dropdown
    Then the search type dropdown should display "Tracking Number" as selected
    And the input field placeholder should remain "Enter Order ID"
