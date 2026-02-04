Feature: Return Options Display - Positive Test Cases

  Scenario: Verify UPS Return Label option is correctly displayed
    Given User navigates to the "Return Policy" page
    Then the return option text "through the provided UPS Return Label" should be visible
