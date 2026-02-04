Feature: Customer Service Wait Time Information Display - Positive and Negative Scenarios

  Scenario: Verify Incorrect Wait Time Message Is Not Displayed
    Given I navigate to the customer service status page
    Then the status message should not contain "The estimated wait time is about 1-2 minutes."
