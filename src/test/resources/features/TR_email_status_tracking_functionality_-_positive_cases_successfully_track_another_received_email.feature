Feature: Email Status Tracking Functionality - Positive Cases

  Scenario: Successfully track another received email
    Given User is on the email status tracking page
    When User enters tracking ID "EMAIL456"
    And User clicks the "Track Email" button
    Then The status message should display "Email Received"
