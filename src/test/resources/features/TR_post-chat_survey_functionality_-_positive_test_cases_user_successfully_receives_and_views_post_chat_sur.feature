Feature: Post-Chat Survey Functionality - Positive Test Cases

  Scenario: User successfully receives and views post-chat survey
    Given the user is on the post-chat completion page
    When a post-chat survey is triggered
    Then a survey prompt with id "survey-prompt" should be displayed
    And the survey prompt should contain the message "Share feedback about our interaction today."
    And a button with text "Submit Feedback" should be visible
