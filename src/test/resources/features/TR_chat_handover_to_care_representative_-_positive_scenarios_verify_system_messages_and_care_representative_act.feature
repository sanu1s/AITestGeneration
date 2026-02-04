Feature: Chat Handover to Care Representative - Positive Scenarios

  Scenario: Verify system messages and care representative active status after handover
    Given a user is on the customer support chat page
    When the chat displays the system message "A care representative is joining now to continue the conversation."
    And the chat displays the system message "The digital assistant is stepping away to allow them to take over."
    Then the chat should display the status "Care Representative is now online."
    And the digital assistant's "active" indicator should not be visible
