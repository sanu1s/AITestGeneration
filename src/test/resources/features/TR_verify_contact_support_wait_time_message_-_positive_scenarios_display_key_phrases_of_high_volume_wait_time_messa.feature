Feature: Verify Contact Support Wait Time Message - Positive Scenarios

  Scenario: Display Key Phrases of High Volume Wait Time Message
    Given User navigates to the "Support" page
    When User clicks the "Contact Representative" button
    Then The wait time message should contain "higher than normal volumes"
    And The wait time message should contain "5-10 minutes"
    And The wait time message should contain "wait for a care representative"
