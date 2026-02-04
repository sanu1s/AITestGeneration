Feature: AI Bot Assistant Initial Greeting and Capabilities - Negative Test Cases

  Scenario: Incorrect bot identity should not be displayed
    Given the AI Bot Assistant page is loaded for incorrect identity validation
    Then the page should not contain the text "I'm your human Assistant"
