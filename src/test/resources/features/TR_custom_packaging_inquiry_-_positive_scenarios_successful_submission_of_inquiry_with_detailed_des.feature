Feature: Custom Packaging Inquiry - Positive Scenarios

  Scenario: Successful submission of inquiry with detailed description
    Given User is on the "Custom Packaging Inquiry" page
    When User enters product description "Small, irregularly shaped ceramic figures"
    And User enters approximate dimensions "Various, averaging 5x5x8 cm"
    And User enters contact email "test1@example.com"
    And User clicks the "Submit Inquiry" button
    Then The success message should display "Your custom packaging inquiry has been submitted successfully."
