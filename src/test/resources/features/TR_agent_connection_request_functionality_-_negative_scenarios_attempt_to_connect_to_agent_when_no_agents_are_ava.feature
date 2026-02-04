Feature: Agent Connection Request Functionality - Negative Scenarios

  Scenario: Attempt to connect to agent when no agents are available
    Given User is on the support chat page
    When User types "Connect me to a human" into the chat input
    And User clicks the "Send" button
    Then An error message "No agents available at this moment. Please try again later." should be displayed
