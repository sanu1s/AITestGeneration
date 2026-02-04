Feature: Customer Service Wait Time Information Display - Positive and Negative Scenarios

  Scenario: Verify No Error Message When Wait Time Message Is Present
    Given I navigate to the customer service status page
    Then the error message should not be displayed
