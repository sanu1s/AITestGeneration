Feature: Email Status Tracking Functionality - Negative Cases

  Scenario: Display error for an empty tracking ID
    Given User is on the email status tracking page
    When User enters tracking ID ""
    And User clicks the "Track Email" button
    Then The error message should display "Tracking ID cannot be empty"
