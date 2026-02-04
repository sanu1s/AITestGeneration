Feature: Chat Inactivity Closure Message - Positive Scenarios

  Scenario: Verify full agent chat closure message after user inactivity
    Given User navigates to the chat closure URL "https://example.com/chat/closed"
    Then the chat message area should display the full message "Due to no response, I will have to close this chat. I am so sorry we were not able to connect to get this matter resolved for you. If there is anything I can help you with, feel free to send a message at your earliest convenience. Either I or a fellow member of our Customer Service team will be happy to assist you. Have a wonderful day!"
