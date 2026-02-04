Feature: Customer Support Routing - Option Selection (Negative Test Cases)

  Scenario: Display error when 'Other Issue' selected but description is blank
    Given User is on the "Connect with Care Representative" page
    And User selects the "Other Issue" option
    And User leaves the "Please describe your issue" text field blank
    When User clicks the "Continue" button
    Then The error message "Please provide details for your 'Other Issue'." should be displayed
