Feature: Customer Service Queue Interaction - Negative Cases

  Scenario: Hold option is not available
    Given User is on the customer service contact page
    When The system displays the queue message
    Then The queue message should display "We are currently experiencing higher than normal volumes, and the estimated wait time to connect with a customer care representative is about 2-3 minutes. Would you to hold and be transferred to an agent?"
    And The "Yes, Hold" button should not be visible
    Then User should see an error message "Option to hold is currently unavailable."
