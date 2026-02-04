Feature: Contact Us Form Submission - Positive Test Cases

  Scenario: Successful submission for a support request
    Given User navigates to the "Contact Us" page
    When User fills the "Name" field with "Bob The Builder"
    And User fills the "Email" field with "bob@example.com"
    And User fills the "Message" field with "I need technical assistance with my account."
    And User clicks the "Submit" button
    Then The status message should display "Thank you for reaching out. Have a great day!"
