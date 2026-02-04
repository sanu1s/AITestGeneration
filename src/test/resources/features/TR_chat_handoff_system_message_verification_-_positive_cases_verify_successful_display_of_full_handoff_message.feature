Feature: Chat Handoff System Message Verification - Positive Cases

  Scenario: Verify successful display of full handoff message
    Given User is on the chat interface page
    Then the system message should display "A care representative is joining now to continue the conversation. The digital assistant is stepping away to allow them to take over."
