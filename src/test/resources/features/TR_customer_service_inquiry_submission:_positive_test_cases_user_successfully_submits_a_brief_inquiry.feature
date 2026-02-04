Feature: Customer Service Inquiry Submission: Positive Test Cases

  Scenario: User successfully submits a brief inquiry
    Given User is on the contact page
    When User provides "Billing question regarding my last invoice" as issue description
    And User clicks "Submit Inquiry" button
    Then User should see a success message "Your inquiry has been submitted. A representative will contact you shortly."
