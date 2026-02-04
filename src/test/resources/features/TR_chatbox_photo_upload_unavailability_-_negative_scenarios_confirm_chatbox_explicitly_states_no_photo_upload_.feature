Feature: Chatbox Photo Upload Unavailability - Negative Scenarios

  Scenario: Confirm Chatbox Explicitly States No Photo Upload Capability
    Given User navigates to the customer support chat interface
    When User interacts with the chat interface
    Then The chat interface should contain the text "we do not have photo upload options available to upload photos through our chatbox."
