Feature: Customer Support Post-Interaction Prompt - Positive Scenarios

  Scenario: Verify display of follow-up prompt and enabled input field after support interaction
    Given User is on the customer support chat page
    When the support system displays a follow-up prompt
    Then the message "Is there anything else I can assist you with today?" should be visible
    And the chat input field should be enabled
