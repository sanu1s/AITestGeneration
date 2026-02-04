Feature: International Site Navigation - Negative Test Cases

  Scenario: Attempt to select an unavailable international region displays an error
    Given User is on the "Main Website Homepage"
    When User clicks the "International Region Selector"
    And User selects "Brazil"
    Then An error message "This region is temporarily unavailable." should be displayed
    And The user should remain on the "Main Website Homepage"
