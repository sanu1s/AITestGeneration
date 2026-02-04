Feature: Location Based Redirection Functionality - Negative Test Cases

  Scenario: Incorrect Redirection to International Site when US Location is Enabled
    Given User has "US" location enabled in the browser
    When User navigates to the base URL "https://www.example.com"
    Then User should be redirected to the international site "https://intl.example.com"
