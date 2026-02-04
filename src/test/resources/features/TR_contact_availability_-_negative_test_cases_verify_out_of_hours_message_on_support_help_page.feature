Feature: Contact Availability - Negative Test Cases

  Scenario: Verify out-of-hours message on Support Help page
    Given User navigates to the "Support Help" page
    When The page loads
    Then The availability message should display "We’re sorry you have reached us outside of our business hours."
