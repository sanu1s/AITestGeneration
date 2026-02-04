Feature: Verify Business Hours Display - Negative Scenarios

  Scenario: Verify incorrect or non-existent business hours are not displayed
    Given User is on the "https://www.example.com/info" page
    Then The business hours display should not show "Sunday: 24/7"
    And The business hours display should not show "Public Holidays: Closed"
