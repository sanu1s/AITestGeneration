Feature: Return Options Display - Negative Test Cases

  Scenario: Verify another non-existent return option is not displayed (e.g., "Mail-in via USPS")
    Given User navigates to the "Return Policy" page
    Then the return option text "Mail-in via USPS" should not be visible
