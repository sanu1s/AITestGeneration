Feature: Customer Support Chat - Positive Scenarios for Issue Clarification

  Scenario: System requests photo evidence for a reported software bug
    Given User navigates to the customer support chat page
    When User types "The application crashes every time I open it." into the chat input
    And User clicks the "Send" button
    Then The system chat message should display "No problem. Do you have any photos of the issue?"
