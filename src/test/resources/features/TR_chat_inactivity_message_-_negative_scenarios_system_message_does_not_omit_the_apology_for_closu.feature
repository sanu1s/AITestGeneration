Feature: Chat Inactivity Message - Negative Scenarios

  Scenario: System message does not omit the apology for closure
    Given User is on the chat application page
    When The chat system triggers an inactivity closure message
    Then The chat message display area should not contain the exact message: "Due to no response, I will have to close this chat. If there is anything I can help you with, feel free to send a message at your earliest convenience. Either I or a fellow member of our Customer Service team will be happy to assist you. Have a wonderful day!"
