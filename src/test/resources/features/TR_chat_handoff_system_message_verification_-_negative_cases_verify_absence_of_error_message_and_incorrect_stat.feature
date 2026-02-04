Feature: Chat Handoff System Message Verification - Negative Cases

  Scenario: Verify absence of error message and incorrect status on successful handoff
    Given User is on the chat interface page
    Then the system message should not contain "Handoff Failed"
    And the error message should not be visible
    And the system message should display "A care representative is joining now to continue the conversation. The digital assistant is stepping away to allow them to take over."
