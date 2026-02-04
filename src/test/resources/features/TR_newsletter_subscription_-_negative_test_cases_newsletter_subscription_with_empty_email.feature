Feature: Newsletter Subscription - Negative Test Cases

  Scenario: Newsletter Subscription with Empty Email
    Given User is on the newsletter subscription page
    When User leaves the email field empty
    And User clicks the "Subscribe" button
    Then An error message "Email address is required." should be displayed
