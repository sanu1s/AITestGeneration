Feature: Chat Handover to Care Representative - Negative Scenarios

  Scenario: Verify error when digital assistant fails to step away after announcement
    Given a user is on the customer support chat page
    When the chat displays the system message "The digital assistant is stepping away to allow them to take over."
    And the digital assistant continues to be active
    Then the chat should display a warning "Handover in progress, please wait for representative."
    And the care representative's "online" status should not be displayed
