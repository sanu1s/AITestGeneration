Feature: Post-Chat Survey and Feedback Functionality (Positive & Negative Cases)

  Scenario: Successfully submitting positive feedback after chat
    Given User is on the "post-chat-survey" page
    When User enters "Excellent service, very helpful!" into the "Feedback" text area
    And User clicks the "Submit Feedback" button
    Then The status message should display "Thank you for your feedback!"
