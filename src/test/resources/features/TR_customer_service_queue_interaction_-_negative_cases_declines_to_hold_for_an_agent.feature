Feature: Customer Service Queue Interaction - Negative Cases

  Scenario: Declines to hold for an agent
    Given User is on the customer service contact page
    When The system displays the queue message
    Then The queue message should display "We are currently experiencing higher than normal volumes, and the estimated wait time to connect with a customer care representative is about 2-3 minutes. Would you to hold and be transferred to an agent?"
    When User clicks on the "No, Hang Up" button
    Then User should see a message "Thank you for contacting us. Goodbye."
