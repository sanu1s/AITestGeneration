Feature: UI Loading Message Verification (Positive Scenarios)

  Scenario: Verify 'Loading My Store' message eventually disappears after page load
    Given User navigates to the application home page
    Then The loading message "Loading My Store" should be visible
    And The loading message "Loading My Store" should disappear
