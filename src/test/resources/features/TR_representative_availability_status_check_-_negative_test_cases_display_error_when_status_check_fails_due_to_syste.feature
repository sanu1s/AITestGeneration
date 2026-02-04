Feature: Representative Availability Status Check - Negative Test Cases

  Scenario: Display error when status check fails due to system issue
    Given User is on the "Contact Us" page at "https://example.com/contact"
    When User clicks the "Check Representative Status" button and a system error occurs
    Then The error message should display "Failed to retrieve status. Please try again later."
