Feature: Agent Transfer Message Display Functionality - Negative Test Cases

  Scenario: Agent Transfer Failure - No Success Message Displayed
    Given User is on the support contact page
    When The system fails to initiate agent transfer
    Then The status message should not display "Agents are available to assist you. I'll transfer you now. Please hold for a moment."
