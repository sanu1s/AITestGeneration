Feature: Agent Transfer Message Display Functionality - Positive Test Cases

  Scenario: Successful Agent Transfer Message Display - Full Text
    Given User is on the support contact page
    When The system indicates agent transfer is initiated
    Then The status message should display "Agents are available to assist you. I'll transfer you now. Please hold for a moment."
