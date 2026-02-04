Feature: Customer Support - Live Agent Information Prompt (Positive Scenarios)

  Scenario: Direct request for live agent displays information prompt
    Given User is on the "Customer Support" page
    When User clicks the "Speak with a Live Agent" button
    Then The system should display the message "I understand you would to speak with a live agent. Could you please provide more information about the issue you are experiencing so I can route you to the correct department? Here are some options to choose from:"
