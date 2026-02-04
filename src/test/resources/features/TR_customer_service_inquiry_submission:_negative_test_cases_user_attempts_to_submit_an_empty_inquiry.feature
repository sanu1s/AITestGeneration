Feature: Customer Service Inquiry Submission: Negative Test Cases

  Scenario: User attempts to submit an empty inquiry
    Given User is on the contact page
    When User provides "" as issue description
    And User clicks "Submit Inquiry" button
    Then User should see an error message "Please provide details about your issue."
