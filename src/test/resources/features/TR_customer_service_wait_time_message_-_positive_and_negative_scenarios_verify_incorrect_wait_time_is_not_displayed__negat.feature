Feature: Customer Service Wait Time Message - Positive and Negative Scenarios

  Scenario: Verify incorrect wait time is not displayed (Negative)
    Given a user navigates to the customer service contact page
    When the system is experiencing "higher than normal volumes"
    Then the system message should not contain "The estimated wait time is approximately 10-15 minutes."
