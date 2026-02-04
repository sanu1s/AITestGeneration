Feature: Application Homepage Connectivity (Negative Test Cases)

  Scenario: User attempts to navigate to a non-existent page
    Given User is on a browser
    When User attempts to navigate to a non-existent page "https://www.example.com/nonexistent-page-123"
    Then The error message should display "Page Not Found"
