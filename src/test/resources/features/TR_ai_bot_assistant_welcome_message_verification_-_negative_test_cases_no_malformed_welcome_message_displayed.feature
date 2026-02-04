Feature: AI Bot Assistant Welcome Message Verification - Negative Test Cases

  Scenario: No Malformed Welcome Message Displayed
    Given User navigates to the AI Bot Assistant welcome page
    Then The bot welcome message should not contain "Welcom! I'm your A.I. Bot Assistant."
