Feature: AI Bot Assistant Welcome Message Display - Negative Test Cases

  Scenario: Verify an incorrect capabilities message is not displayed
    Given User navigates to the AI Bot interface
    Then The bot message should not display "I can only answer technical questions."
