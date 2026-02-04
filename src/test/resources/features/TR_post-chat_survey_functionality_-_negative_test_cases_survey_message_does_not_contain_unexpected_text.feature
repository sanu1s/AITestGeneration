Feature: Post-Chat Survey Functionality - Negative Test Cases

  Scenario: Survey message does not contain unexpected text
    Given the user has completed a chat and received a survey prompt
    When the survey prompt is displayed
    Then the survey prompt should not contain the message "Please rate your experience on a scale of 1 to 5"
