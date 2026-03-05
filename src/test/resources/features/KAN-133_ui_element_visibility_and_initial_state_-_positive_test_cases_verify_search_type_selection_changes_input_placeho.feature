Feature: UI Element Visibility and Initial State - Positive Test Cases

  Scenario: Verify Search Type Selection Changes Input Placeholder
    Given I am on the Order Quest page
    When I select "Tracking Number" from the "Search Type" dropdown
    Then the "Order ID" input field should have placeholder "Enter Tracking Number"
