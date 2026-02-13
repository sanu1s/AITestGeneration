Feature: Price Adjustment Request Handling - Positive Test Cases

  Scenario: User requests price adjustment and is informed of agent unavailability outside business hours
    Given the user navigates to the order tracking page
    When the user sends the message "Good morning an item I just ordered is now on sale and I would like a price adjustment"
    And the user clicks the Track Order button
    Then the bot should respond with "Good morning! I understand that you would like a price adjustment for an item you just ordered that is now on sale. This looks like something a care representative is better suited to handle. May I check if an agent is available to help you?"
    When the user sends the message "Yes"
    And the user clicks the Track Order button
    Then the bot should respond with "We’re sorry you have reached us outside of our business hours. Is there anything else I can assist you with?"
