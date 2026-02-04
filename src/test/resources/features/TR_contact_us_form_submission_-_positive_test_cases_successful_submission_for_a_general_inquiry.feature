Feature: Contact Us Form Submission - Positive Test Cases

  Scenario: Successful submission for a general inquiry
    Given User navigates to the "Contact Us" page
    When User fills the "Name" field with "Alice Wonderland"
    And User fills the "Email" field with "alice@example.com"
    And User fills the "Message" field with "I have a general inquiry about your services."
    And User clicks the "Submit" button
    Then The status message should display "Thank you for reaching out. Have a great day!"
