Feature: Order Quest Search Type Functionality - Positive Scenarios

  Scenario: Verify input field placeholder changes when 'Tracking Number' is selected
    Given I navigate to the Order Quest application
    And the 'Search Type' dropdown is visible
    When I select "Tracking Number" from the 'Search Type' dropdown
    Then the 'Order ID' input field's placeholder should change to "Enter Tracking Number"
