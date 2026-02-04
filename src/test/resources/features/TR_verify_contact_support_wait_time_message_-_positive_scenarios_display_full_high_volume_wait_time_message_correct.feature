Feature: Verify Contact Support Wait Time Message - Positive Scenarios

  Scenario: Display Full High Volume Wait Time Message Correctly
    Given User navigates to the "Support" page
    When User clicks the "Contact Representative" button
    Then The wait time message should display "We are currently experiencing higher than normal volumes, with an estimated wait time of about 5-10 minutes. Would you to hold and wait for a care representative?"
