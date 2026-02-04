Feature: Customer Service Wait Time Message Display - Positive Scenarios

  Scenario: Verify key phrases are present in the wait time message
    Given User navigates to the customer service contact page
    Then The status message should contain "higher than normal volumes"
    And The status message should contain "5-10 minutes"
    And The status message should contain "Would you to hold?"
