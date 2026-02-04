Feature: Chat Support Messaging for Unresolved Issues (Negative Scenarios)

  Scenario: Generic Error Message Not Displayed
    Given User navigates to the application chat page
    When the chat support session ends with an unresolved issue
    Then the chat message result does not display "An error occurred during your chat session."
