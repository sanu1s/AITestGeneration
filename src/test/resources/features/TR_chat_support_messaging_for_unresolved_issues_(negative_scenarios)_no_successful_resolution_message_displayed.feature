Feature: Chat Support Messaging for Unresolved Issues (Negative Scenarios)

  Scenario: No Successful Resolution Message Displayed
    Given User navigates to the application chat page
    When the chat support session ends with an unresolved issue
    Then the chat message result does not display "Your issue has been resolved successfully."
