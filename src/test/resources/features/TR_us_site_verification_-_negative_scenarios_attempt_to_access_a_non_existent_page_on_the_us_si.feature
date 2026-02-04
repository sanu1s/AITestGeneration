Feature: US Site Verification - Negative Scenarios

  Scenario: Attempt to access a non-existent page on the US site
    Given User opens the browser
    When User navigates to "https://www.example.com/us/non-existent-page"
    Then An error message "Page Not Found" should be displayed
