Feature: Location Based Redirection Functionality - Negative Test Cases

  Scenario: No Redirection and Stays on Base URL when US Location is Enabled
    Given User has "US" location enabled in the browser
    When User navigates to the base URL "https://www.example.com"
    Then User should remain on the base URL "https://www.example.com"
