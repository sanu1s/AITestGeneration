Feature: Location Based Redirection Functionality - Positive Test Cases

  Scenario: Successful Redirection to US Site based on US Location
    Given User has "US" location enabled in the browser
    When User navigates to the base URL "https://www.example.com"
    Then User should be redirected to the "US" regional site "https://us.example.com"
