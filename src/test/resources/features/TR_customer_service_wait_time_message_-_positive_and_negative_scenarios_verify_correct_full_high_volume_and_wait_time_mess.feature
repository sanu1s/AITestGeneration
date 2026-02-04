Feature: Customer Service Wait Time Message - Positive and Negative Scenarios

  Scenario: Verify correct full high volume and wait time message display (Positive)
    Given a user navigates to the customer service contact page
    When the contact page loads with high volume status
    Then the system message should display "We are currently experiencing higher than normal volumes. The estimated wait time is approximately 4-5 minutes. Would you to hold and wait for a care representative?"
