Feature: Customer Service Wait Time Message Display - Negative Scenarios

  Scenario: Verify message does not indicate immediate connection
    Given User navigates to the customer service contact page
    Then The status message should not contain "You will be connected immediately"
