Feature: Customer Support Connection - Negative Test Cases

  Scenario: User fails to connect to a representative after requesting chat
    Given User navigates to the customer support page
    When User clicks the "Start Chat" button
    And The system attempts to connect to a representative
    Then The error message should display "Connection to representative failed, please try again."
    And The "Start Chat" button should be enabled again
