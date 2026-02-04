Feature: Chat Inactivity Closure Message - Positive Scenarios

  Scenario: Verify key phrases in agent chat closure message are present
    Given User is on the chat closure page
    Then the chat message area should contain the phrase "Due to no response"
    And the chat message area should contain the phrase "we were not able to connect"
    And the chat message area should contain the phrase "feel free to send a message"
    And the chat message area should contain the phrase "Have a wonderful day!"
