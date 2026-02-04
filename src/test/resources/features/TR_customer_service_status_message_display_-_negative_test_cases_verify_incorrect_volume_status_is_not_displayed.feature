Feature: Customer Service Status Message Display - Negative Test Cases

  Scenario: Verify incorrect volume status is not displayed
    Given User navigates to the "Support Contact" page
    Then The system status message should not contain "We are currently experiencing normal volumes."
