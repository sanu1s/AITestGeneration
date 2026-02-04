Feature: Human Assistance Request - Positive Scenarios

  Scenario: Successfully initiate human chat via button
    Given User is on the customer support page
    When User clicks the "Get a human" button
    Then A confirmation message "Connecting you to an agent..." should be displayed
    Then The current URL should be "https://example.com/support/chat"
