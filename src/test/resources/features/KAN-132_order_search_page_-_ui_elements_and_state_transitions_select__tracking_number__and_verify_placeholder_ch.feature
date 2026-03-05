Feature: Order Search Page - UI Elements and State Transitions

  Scenario: Select "Tracking Number" and verify placeholder change
    Given I am on the Order Search Page
    When I select "Tracking Number" from the dropdown
    Then the "Order Number" field should have placeholder "Enter Tracking Number"
    And the "orderDetails" section should be "visible"
    And the "error" section should be "hidden"
