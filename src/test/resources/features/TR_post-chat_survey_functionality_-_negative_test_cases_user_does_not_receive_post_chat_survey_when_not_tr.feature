Feature: Post-Chat Survey Functionality - Negative Test Cases

  Scenario: User does not receive post-chat survey when not triggered
    Given the user is on the post-chat completion page
    When no post-chat survey is triggered
    Then a survey prompt with id "survey-prompt" should not be visible
