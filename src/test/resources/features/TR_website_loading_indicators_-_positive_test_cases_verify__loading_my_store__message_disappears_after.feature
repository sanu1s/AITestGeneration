Feature: Website Loading Indicators - Positive Test Cases

  Scenario: Verify 'Loading My Store' message disappears after page fully loads
    Given User navigates to the application homepage "https://myonlinestore.com"
    When The page has finished loading
    Then The loading indicator "Loading My Store" should not be visible
