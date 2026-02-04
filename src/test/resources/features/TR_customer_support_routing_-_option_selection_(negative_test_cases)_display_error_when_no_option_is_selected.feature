Feature: Customer Support Routing - Option Selection (Negative Test Cases)

  Scenario: Display error when no option is selected
    Given User is on the "Connect with Care Representative" page
    And User has not selected any option
    When User clicks the "Continue" button
    Then The error message "Please select an issue category to proceed." should be displayed
