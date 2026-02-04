Feature: Custom Packaging Inquiry - Negative Scenarios

  Scenario: Submission failure due to missing product description
    Given User is on the "Custom Packaging Inquiry" page
    When User leaves product description empty
    And User enters approximate dimensions "10x10x10 cm"
    And User enters contact email "invalid1@example.com"
    And User clicks the "Submit Inquiry" button
    Then The error message should display "Please describe your product."
