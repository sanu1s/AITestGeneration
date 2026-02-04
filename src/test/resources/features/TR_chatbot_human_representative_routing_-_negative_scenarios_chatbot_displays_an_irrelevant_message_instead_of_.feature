Feature: Chatbot Human Representative Routing - Negative Scenarios

  Scenario: Chatbot displays an irrelevant message instead of the routing prompt
    Given User is on the chatbot support page
    When User types "I need to talk to someone" into the chat input
    And User clicks the "Send" button
    Then The chatbot should display the message "Please provide your order number to proceed."
