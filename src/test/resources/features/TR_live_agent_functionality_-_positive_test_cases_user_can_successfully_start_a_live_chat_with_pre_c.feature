Feature: Live Agent Functionality - Positive Test Cases

  Scenario: User can successfully start a live chat with pre-chat form
    Given User is on the "https://www.example.com/support" page
    When User clicks the "Live Chat" button
    And User enters "John Doe" in the name field
    And User enters "john.doe@example.com" in the email field
    And User enters "I have a question about my order." in the query field
    And User clicks the "Start Chat" button
    Then The chat window should be visible
    And A welcome message "Hello John Doe, an agent will be with you shortly." should be displayed
