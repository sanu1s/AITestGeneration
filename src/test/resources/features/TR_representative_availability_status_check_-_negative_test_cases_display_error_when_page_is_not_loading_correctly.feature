Feature: Representative Availability Status Check - Negative Test Cases

  Scenario: Display error when page is not loading correctly
    Given User is on a broken "Contact Us" page at "https://example.com/broken-contact"
    When User attempts to check representative status
    Then The error message should display "Page functionality is not available."
