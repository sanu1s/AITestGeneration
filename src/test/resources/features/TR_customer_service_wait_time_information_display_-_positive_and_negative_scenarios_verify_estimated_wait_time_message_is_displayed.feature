Feature: Customer Service Wait Time Information Display - Positive and Negative Scenarios

  Scenario: Verify Estimated Wait Time Message is Displayed
    Given I navigate to the customer service status page
    Then the status message should contain "The estimated wait time is about 5-10 minutes."
