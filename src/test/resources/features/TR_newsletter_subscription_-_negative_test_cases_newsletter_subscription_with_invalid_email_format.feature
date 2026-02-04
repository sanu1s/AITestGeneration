Feature: Newsletter Subscription - Negative Test Cases

  Scenario: Newsletter Subscription with Invalid Email Format
    Given User is on the newsletter subscription page
    When User enters email "invalid-email"
    And User clicks the "Subscribe" button
    Then An error message "Please enter a valid email address." should be displayed
