Feature: Return Options Display - Positive Test Cases

  Scenario: Verify In-store return options are correctly displayed
    Given User navigates to the "Return Policy" page
    Then the return option text "in-store at any OwnCompany Barn" should be visible
    And the return option text "in-store at any OwnCompany location" should be visible
