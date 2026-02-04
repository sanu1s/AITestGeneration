Feature: Chatbot Agent Handoff Message Display - Positive Test Cases

  Scenario: Verify chatbot suggests agent assistance when user asks for a human
    Given User navigates to the customer support chat page
    When User types "Can I speak to a human?" into the chat input field
    And User clicks the "Send" button
    Then The chatbot message area should display "I understand how this situation may be frustrating. This looks something a care representative is better suited to handle. May I check if an agent is available to help you?"
