Feature: Customer Service Wait Time Information Display - Positive and Negative Scenarios

  Scenario: Verify Truncated Message Is Not Displayed When Full Message Is Expected (Negative)
    Given User is on the customer service contact page
    When the system status indicates high call volumes
    Then the status message should not display "We are currently experiencing higher than normal volumes."
