Feature: Verify Business Hours Display - Positive Scenarios

  Scenario: Successfully view standard weekday business hours
    Given User is on the "https://www.example.com/info" page
    Then The business hours display should show "Monday - Friday: 9 AM to 5 PM"
