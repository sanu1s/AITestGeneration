Feature: Customer Support Chat - Positive Scenarios for Issue Clarification

  Scenario: System requests photo evidence for a reported hardware issue
    Given User navigates to the customer support chat page
    When User types "My new monitor has a crack on the screen." into the chat input
    And User clicks the "Send" button
    Then The system chat message should display "No problem. Do you have any photos of the issue?"
