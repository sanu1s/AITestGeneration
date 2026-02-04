Feature: Service Availability - Negative Test Cases

  Scenario: Verify out-of-hours message on contact page
    Given User navigates to the "contact-us" page
    When the page finishes loading
    Then the unavailability message should display "We’re sorry you have reached us outside of our business hours."
