Feature: Order Search Page - Initial State and Visibility

  Scenario: Verify Initial Visibility of Sections
    Given I am on the Order Search Page
    Then the "orderDetails" section should be visible
    And the "error" section should be hidden
    And the "errorMessage" paragraph should be hidden
