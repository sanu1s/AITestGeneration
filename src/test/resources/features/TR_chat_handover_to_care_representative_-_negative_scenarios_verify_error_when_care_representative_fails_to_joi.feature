Feature: Chat Handover to Care Representative - Negative Scenarios

  Scenario: Verify error when care representative fails to join after announcement
    Given a user is on the customer support chat page
    When the chat displays the system message "A care representative is joining now to continue the conversation."
    And 30 seconds pass without a care representative joining
    Then the chat should display an error message "Care representative could not join. Please try again later."
    And the digital assistant should resume active status
