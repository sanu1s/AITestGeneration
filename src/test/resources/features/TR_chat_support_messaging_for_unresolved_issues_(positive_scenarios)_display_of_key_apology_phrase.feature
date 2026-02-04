Feature: Chat Support Messaging for Unresolved Issues (Positive Scenarios)

  Scenario: Display of Key Apology Phrase
    Given User navigates to the application chat page
    When the chat support session ends with an unresolved issue
    Then the chat message result contains "I apologize I was not able to resolve your matter today."
