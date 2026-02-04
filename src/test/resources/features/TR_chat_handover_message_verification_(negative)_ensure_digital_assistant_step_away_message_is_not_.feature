Feature: Chat Handover Message Verification (Negative)

  Scenario: Ensure digital assistant step away message is NOT displayed prematurely
    Given User is on the chat interface page
    Then The system should NOT display the message "The digital assistant is stepping away to allow them to take over."
