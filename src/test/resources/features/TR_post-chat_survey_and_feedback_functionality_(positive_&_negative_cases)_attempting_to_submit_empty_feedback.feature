Feature: Post-Chat Survey and Feedback Functionality (Positive & Negative Cases)

  Scenario: Attempting to submit empty feedback
    Given User is on the "post-chat-survey" page
    When User leaves the "Feedback" text area empty
    And User clicks the "Submit Feedback" button
    Then The error message should display "Feedback cannot be empty."
