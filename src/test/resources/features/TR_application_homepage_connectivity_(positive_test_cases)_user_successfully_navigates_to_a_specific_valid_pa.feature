Feature: Application Homepage Connectivity (Positive Test Cases)

  Scenario: User successfully navigates to a specific valid page
    Given User is on a browser
    When User navigates to the "about" page "https://www.example.com/about"
    Then The user should be on the URL "https://www.example.com/about/"
