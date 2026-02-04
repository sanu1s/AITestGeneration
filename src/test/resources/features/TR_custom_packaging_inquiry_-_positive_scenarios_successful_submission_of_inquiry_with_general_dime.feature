Feature: Custom Packaging Inquiry - Positive Scenarios

  Scenario: Successful submission of inquiry with general dimensions
    Given User is on the "Custom Packaging Inquiry" page
    When User enters product description "Fragile art pieces of various sizes"
    And User enters approximate dimensions "Max 30x20x15 cm"
    And User enters contact email "test2@example.com"
    And User clicks the "Submit Inquiry" button
    Then The success message should display "Your custom packaging inquiry has been submitted successfully."
