Feature: Website Loading Indicators - Positive Test Cases

  Scenario: Verify 'Loading My Store' message appears on initial page load
    Given User navigates to the application homepage "https://myonlinestore.com"
    Then The loading indicator "Loading My Store" should be visible
