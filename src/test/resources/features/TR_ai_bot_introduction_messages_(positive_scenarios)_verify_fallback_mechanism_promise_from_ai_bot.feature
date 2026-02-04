Feature: AI Bot Introduction Messages (Positive Scenarios)

  Scenario: Verify fallback mechanism promise from AI Bot
    Given I am on the AI Bot chat page
    Then the bot displays the fallback promise "If I can't answer your question, I'll connect you with an agent who can."
