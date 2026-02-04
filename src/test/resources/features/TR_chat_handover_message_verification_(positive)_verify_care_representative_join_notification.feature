Feature: Chat Handover Message Verification (Positive)

  Scenario: Verify Care Representative Join Notification
    Given User is on the chat interface page
    Then The system should display the message "A care representative is joining now to continue the conversation."
