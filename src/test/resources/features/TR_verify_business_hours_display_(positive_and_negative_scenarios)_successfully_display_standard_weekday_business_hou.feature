Feature: Verify Business Hours Display (Positive and Negative Scenarios)

  Scenario: Successfully display standard weekday business hours
    Given User navigates to the "Contact Us" page at "https://www.example.com/contact"
    Then The business hours should display "Monday - Friday: 9:00 AM - 5:00 PM EST"
