Feature: Chat Inactivity Message - Positive Scenarios

  Scenario: System message includes key phrases for assistance
    Given User is on the chat application page
    When The chat system triggers an inactivity closure message
    Then The chat message display area should contain the phrase "feel free to send a message at your earliest convenience"
    And The chat message display area should contain the phrase "Customer Service team will be happy to assist you"
