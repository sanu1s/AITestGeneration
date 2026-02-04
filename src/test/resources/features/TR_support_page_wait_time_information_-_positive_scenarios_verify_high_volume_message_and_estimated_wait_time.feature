Feature: Support Page Wait Time Information - Positive Scenarios

  Scenario: Verify high volume message and estimated wait time are displayed
    Given User navigates to the "Support" page
    Then The support message area should display "We are currently experiencing higher than normal volumes, and the estimated wait time to speak with an agent is about 10-20 minutes."
