Feature: Email Status Tracking Functionality - Positive Cases

  Scenario: Successfully track a received email
    Given User is on the email status tracking page
    When User enters tracking ID "EMAIL123"
    And User clicks the "Track Email" button
    Then The status message should display "Email Received"
