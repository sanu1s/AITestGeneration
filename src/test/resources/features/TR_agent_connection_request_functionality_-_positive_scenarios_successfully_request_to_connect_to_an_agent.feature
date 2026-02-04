Feature: Agent Connection Request Functionality - Positive Scenarios

  Scenario: Successfully request to connect to an agent
    Given User is on the support chat page
    When User types "Please connect me to an agent" into the chat input
    And User clicks the "Send" button
    Then A message "Connecting you to an agent shortly." should be displayed
