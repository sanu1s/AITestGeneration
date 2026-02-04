Feature: Customer Service Wait Time Information Display - Positive and Negative Scenarios

  Scenario: Verify High Volume Status Message is Displayed
    Given I navigate to the customer service status page
    Then the status message should contain "We are currently experiencing higher than normal volumes."
