Feature: Verify Business Hours Display (Positive and Negative Scenarios)

  Scenario: Business hours section is not found on the page
    Given User navigates to the "Contact Us" page at "https://www.example.com/contact"
    Then The business hours section should not be visible
