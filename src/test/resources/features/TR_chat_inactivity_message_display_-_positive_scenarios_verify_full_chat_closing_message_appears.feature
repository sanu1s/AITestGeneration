Feature: Chat Inactivity Message Display - Positive Scenarios

  Scenario: Verify full chat closing message appears
    Given User is on the chat page after inactivity
    When The page finishes loading
    Then The status message should display "Due to no response, I will have to close this chat. I am so sorry we were not able to connect to get this matter resolved for you. If there is anything I can help with, feel free to send a message at your earliest convenience. Either I or a fellow member of our Customer Service team will be happy to assist you. Have a wonderful day!"
