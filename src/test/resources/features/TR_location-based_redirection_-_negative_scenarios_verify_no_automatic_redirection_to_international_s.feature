Feature: Location-Based Redirection - Negative Scenarios

  Scenario: Verify no automatic redirection to international site when location is enabled
    Given User navigates to "https://www.example.com/home"
    And User's location is enabled for international access
    When The page finishes loading
    Then The current URL should not be "https://www.example.com/international"
    And The current URL should contain "/home"
