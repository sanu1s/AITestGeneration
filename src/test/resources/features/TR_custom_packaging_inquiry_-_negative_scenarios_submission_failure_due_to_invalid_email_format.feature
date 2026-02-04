Feature: Custom Packaging Inquiry - Negative Scenarios

  Scenario: Submission failure due to invalid email format
    Given User is on the "Custom Packaging Inquiry" page
    When User enters product description "Large, heavy machinery parts"
    And User enters approximate dimensions "100x50x50 cm"
    And User enters contact email "invalid-email"
    And User clicks the "Submit Inquiry" button
    Then The error message should display "Please enter a valid email address."
