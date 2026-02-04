Feature: Newsletter Subscription - Positive Test Cases

  Scenario: Successful Newsletter Subscription with Valid Email
    Given User is on the newsletter subscription page
    When User enters email "amandajfivestar@gmail.com"
    And User clicks the "Subscribe" button
    Then A success message "Subscription successful!" should be displayed
