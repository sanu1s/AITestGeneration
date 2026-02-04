Feature: Post-Chat Survey Functionality - Positive Test Cases

  Scenario: User is prompted to share feedback about interaction
    Given the user has just finished a customer support chat
    When the chat interface closes
    Then a feedback request element should be present
    And the request should encourage the user to "share feedback about our interaction today."
    And clicking on a "Give Feedback" button should lead to a survey page
