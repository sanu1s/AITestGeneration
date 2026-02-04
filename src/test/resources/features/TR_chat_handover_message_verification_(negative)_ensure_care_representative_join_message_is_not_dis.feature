Feature: Chat Handover Message Verification (Negative)

  Scenario: Ensure care representative join message is NOT displayed prematurely
    Given User is on the chat interface page
    Then The system should NOT display the message "A care representative is joining now to continue the conversation."
