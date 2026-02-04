Feature: Registry Name Visibility Management - Positive and Negative Scenarios

  Scenario: Successfully remove another name and verify its absence from public view
    Given I am on the registry management page
    When I remove the name "User A" from the registry
    Then "User A" should not be visible on the public registry
