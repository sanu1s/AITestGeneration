Feature: Chat System - Agent Greeting Positive Test Cases

  Scenario: Verify agent's name and company are present in the greeting
    Given the user navigates to the chat page
    Then the chat window should display a message containing "DelShawnte"
    And the message should contain "OwnCompany"
