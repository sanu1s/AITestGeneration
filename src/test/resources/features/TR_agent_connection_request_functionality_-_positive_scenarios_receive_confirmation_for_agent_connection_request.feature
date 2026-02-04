Feature: Agent Connection Request Functionality - Positive Scenarios

  Scenario: Receive confirmation for agent connection request
    Given User is on the support chat page
    When User types "I need to speak to someone" into the chat input
    And User clicks the "Send" button
    Then A message "We are finding an agent for you." should be displayed
