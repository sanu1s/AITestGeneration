Feature: Chat Inactivity Message Display - Positive Scenarios

  Scenario: Verify partial text of chat closing message
    Given User is on the chat page after inactivity
    When The page finishes loading
    Then The status message should contain "Due to no response, I will have to close this chat."
    And The status message should contain "Have a wonderful day!"
