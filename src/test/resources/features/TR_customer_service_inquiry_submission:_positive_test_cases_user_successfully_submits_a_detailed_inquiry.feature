Feature: Customer Service Inquiry Submission: Positive Test Cases

  Scenario: User successfully submits a detailed inquiry
    Given User is on the contact page
    When User provides "My internet is down since yesterday and I need help" as issue description
    And User clicks "Submit Inquiry" button
    Then User should see a success message "Your inquiry has been submitted. A representative will contact you shortly."
