Feature: AI Bot Assistant Initial Greeting and Capabilities - Negative Test Cases

  Scenario: Message denying agent connection should not be displayed
    Given the AI Bot Assistant page is loaded for denying agent connection validation
    Then the page should not contain the text "I will not connect you with an agent"
