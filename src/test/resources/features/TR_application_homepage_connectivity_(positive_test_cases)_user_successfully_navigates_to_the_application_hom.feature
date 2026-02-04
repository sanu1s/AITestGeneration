Feature: Application Homepage Connectivity (Positive Test Cases)

  Scenario: User successfully navigates to the application homepage
    Given User is on a browser
    When User navigates to the application homepage "https://www.example.com"
    Then The user should be on the URL "https://www.example.com/"
