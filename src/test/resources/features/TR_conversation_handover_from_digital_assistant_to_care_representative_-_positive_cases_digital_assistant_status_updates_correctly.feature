Feature: Conversation Handover from Digital Assistant to Care Representative - Positive Cases

  Scenario: Digital Assistant Status Updates Correctly
    Given a user is on the chat application page
    And the digital assistant's status is "Active"
    When the digital assistant initiates handover
    Then the digital assistant's status should be "Inactive"
    And the care representative's status should be "Active"
