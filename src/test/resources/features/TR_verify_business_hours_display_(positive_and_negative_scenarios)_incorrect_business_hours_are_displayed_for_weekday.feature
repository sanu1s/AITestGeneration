Feature: Verify Business Hours Display (Positive and Negative Scenarios)

  Scenario: Incorrect business hours are displayed for weekdays
    Given User navigates to the "Contact Us" page at "https://www.example.com/contact"
    Then The business hours should not display "Monday - Friday: 24/7"
