Feature: Representative Availability Status Check - Positive Test Cases

  Scenario: Successfully display representative as unavailable
    Given User is on the "Contact Us" page at "https://example.com/contact"
    When User clicks the "Check Representative Status" button
    Then The status message should display "Representative is currently unavailable."
