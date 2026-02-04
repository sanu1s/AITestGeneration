Feature: Customer Support - Live Agent Information Prompt (Positive Scenarios)

  Scenario: Requesting agent via general help option displays information prompt
    Given User is on the "Help & Support" page
    When User clicks the "Get Help" link
    Then The system should display the message "I understand you would to speak with a live agent. Could you please provide more information about the issue you are experiencing so I can route you to the correct department? Here are some options to choose from:"
