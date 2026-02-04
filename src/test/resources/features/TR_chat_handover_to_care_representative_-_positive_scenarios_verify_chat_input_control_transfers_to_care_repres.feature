Feature: Chat Handover to Care Representative - Positive Scenarios

  Scenario: Verify chat input control transfers to care representative
    Given a user is on the customer support chat page after digital assistant handover
    When the chat displays the message "The digital assistant is stepping away to allow them to take over."
    Then the chat input field should show a placeholder "Message Care Representative..."
    And the digital assistant's name should not be associated with the active input source
