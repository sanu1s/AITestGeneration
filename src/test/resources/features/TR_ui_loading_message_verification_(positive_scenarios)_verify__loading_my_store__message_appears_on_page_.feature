Feature: UI Loading Message Verification (Positive Scenarios)

  Scenario: Verify 'Loading My Store' message appears on page load
    Given User navigates to the application home page
    Then The loading message "Loading My Store" should be visible
