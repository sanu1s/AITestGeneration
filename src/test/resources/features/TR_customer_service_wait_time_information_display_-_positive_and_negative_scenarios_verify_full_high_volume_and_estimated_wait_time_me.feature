Feature: Customer Service Wait Time Information Display - Positive and Negative Scenarios

  Scenario: Verify Full High Volume and Estimated Wait Time Message (Positive)
    Given User is on the customer service contact page
    When the system status indicates high call volumes
    Then the status message should display "We are currently experiencing higher than normal volumes. The estimated wait time is around 60-70 minutes. Would you to hold?"
