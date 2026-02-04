Feature: Registry Name Visibility Management - Positive and Negative Scenarios

  Scenario: Successfully remove a name and verify its absence from public view
    Given I am on the registry management page
    When I remove the name "Product X" from the registry
    Then "Product X" should not be visible on the public registry
