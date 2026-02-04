Feature: Chat Handover Message Verification (Positive)

  Scenario: Verify Digital Assistant Stepping Away Notification
    Given User is on the chat interface page
    Then The system should display the message "The digital assistant is stepping away to allow them to take over."
