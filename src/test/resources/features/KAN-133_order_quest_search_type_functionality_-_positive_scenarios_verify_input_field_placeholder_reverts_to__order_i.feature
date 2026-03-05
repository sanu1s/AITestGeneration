Feature: Order Quest Search Type Functionality - Positive Scenarios

  Scenario: Verify input field placeholder reverts to 'Order ID' when 'Order ID' is selected
    Given I navigate to the Order Quest application
    And I have selected "Tracking Number" from the 'Search Type' dropdown
    When I select "Order ID" from the 'Search Type' dropdown
    Then the 'Order ID' input field's placeholder should change to "Enter Order ID"
