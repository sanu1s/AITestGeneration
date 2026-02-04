Feature: Customer Care Wait Time Information Display - Positive Test Cases

  Scenario: Verify full high volume wait time message is displayed
    Given User is on the customer support page
    Then The wait time message should display "We are currently experiencing higher than normal volumes, and the estimated wait time to connect with a customer care representative is over 6 hours."
