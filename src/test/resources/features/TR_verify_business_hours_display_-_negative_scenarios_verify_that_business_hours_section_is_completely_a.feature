Feature: Verify Business Hours Display - Negative Scenarios

  Scenario: Verify that business hours section is completely absent when expected
    Given User is on the "https://www.example.com/info" page
    Then The business hours display element should not be visible
