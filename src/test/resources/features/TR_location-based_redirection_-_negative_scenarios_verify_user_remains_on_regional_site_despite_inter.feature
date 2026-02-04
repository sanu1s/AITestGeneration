Feature: Location-Based Redirection - Negative Scenarios

  Scenario: Verify user remains on regional site despite international location being enabled
    Given User navigates to "https://www.example.com/us-en"
    And User's location is enabled for international access
    When User expects redirection
    Then The current URL should not be "https://www.example.com/global-en"
    And The current URL should contain "/us-en"
