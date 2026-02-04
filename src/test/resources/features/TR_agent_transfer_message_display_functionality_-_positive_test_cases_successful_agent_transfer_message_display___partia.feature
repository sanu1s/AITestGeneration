Feature: Agent Transfer Message Display Functionality - Positive Test Cases

  Scenario: Successful Agent Transfer Message Display - Partial Text Verification
    Given User is on the support contact page
    When The system indicates agent transfer is initiated
    Then The status message should contain "Agents are available to assist you."
