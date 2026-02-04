Feature: Verify Business Hours Display (Positive and Negative Scenarios)

  Scenario: Successfully display weekend business hours
    Given User navigates to the "Contact Us" page at "https://www.example.com/contact"
    Then The business hours should display "Saturday: 10:00 AM - 2:00 PM EST"
