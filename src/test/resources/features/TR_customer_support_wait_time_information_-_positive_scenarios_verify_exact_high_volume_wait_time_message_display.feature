Feature: Customer Support Wait Time Information - Positive Scenarios

  Scenario: Verify Exact High Volume Wait Time Message Display
    Given User navigates to the "Support" page
    Then The wait time information message should display "We are currently experiencing higher than normal volumes, and the estimated wait time to connect with a customer care representative is approximately 10-20 minutes. Would you to hold?"
