Feature: Chatbot Human Representative Routing - Negative Scenarios

  Scenario: Chatbot fails to display the routing prompt when requested
    Given User is on the chatbot support page
    When User types "I want to speak to a human" into the chat input
    And User clicks the "Send" button
    Then The chatbot should NOT display the message "I understand that you would to speak with a human representative. Could you please provide more information about the issue you are experiencing so I can route you to the correct department? Here are some options:"
