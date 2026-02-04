Feature: AI Bot Assistant - Welcome Message Validation (Negative Test Cases)

  Scenario: Welcome message contains unexpected additional text
    Given User navigates to the AI Bot Assistant page
    Then The welcome message should NOT contain "Extra unwanted information about privacy."
