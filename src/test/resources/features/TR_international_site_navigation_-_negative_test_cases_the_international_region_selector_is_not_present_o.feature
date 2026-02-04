Feature: International Site Navigation - Negative Test Cases

  Scenario: The International Region Selector is not present on the homepage
    Given User is on the "Main Website Homepage"
    Then The "International Region Selector" should not be visible
