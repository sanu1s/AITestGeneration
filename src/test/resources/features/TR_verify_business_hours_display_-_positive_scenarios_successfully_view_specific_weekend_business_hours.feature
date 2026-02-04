Feature: Verify Business Hours Display - Positive Scenarios

  Scenario: Successfully view specific weekend business hours
    Given User is on the "https://www.example.com/info" page
    Then The business hours display should show "Saturday: 10 AM to 2 PM"
