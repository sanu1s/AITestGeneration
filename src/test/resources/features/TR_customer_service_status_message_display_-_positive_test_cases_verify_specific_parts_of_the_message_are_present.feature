Feature: Customer Service Status Message Display - Positive Test Cases

  Scenario: Verify specific parts of the message are present
    Given User navigates to the "Support Contact" page
    Then The system status message should contain "higher than normal volumes"
    And The system status message should contain "2-3 minutes"
