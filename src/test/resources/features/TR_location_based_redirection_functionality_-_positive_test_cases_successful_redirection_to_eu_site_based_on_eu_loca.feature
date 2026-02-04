Feature: Location Based Redirection Functionality - Positive Test Cases

  Scenario: Successful Redirection to EU Site based on EU Location
    Given User has "EU" location enabled in the browser
    When User navigates to the base URL "https://www.example.com"
    Then User should be redirected to the "EU" regional site "https://eu.example.com"
