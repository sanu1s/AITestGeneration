Feature: Chat Handover to Care Representative - Positive Scenarios

  Scenario: Chat Input Field Becomes Enabled for User After Handover
    Given the user is on the chat support page
    When the user requests to speak with a human agent
    Then the chat input field should be enabled
