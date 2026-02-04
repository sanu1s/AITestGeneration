Feature: Chat Handoff System Message Verification - Negative Cases

  Scenario: Verify absence of digital assistant active message after handoff
    Given User is on the chat interface page
    Then the system message should not contain "Digital assistant is active"
    And the system message should display "A care representative is joining now to continue the conversation. The digital assistant is stepping away to allow them to take over."
