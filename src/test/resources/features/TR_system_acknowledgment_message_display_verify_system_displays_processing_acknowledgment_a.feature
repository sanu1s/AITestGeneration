Feature: System Acknowledgment Message Display

  Scenario: Verify system displays processing acknowledgment after a generic action
    Given the user is on the application's starting page
    When the user triggers a generic process
    Then the message "Got it. Let me see if we have any information on this." should be displayed
