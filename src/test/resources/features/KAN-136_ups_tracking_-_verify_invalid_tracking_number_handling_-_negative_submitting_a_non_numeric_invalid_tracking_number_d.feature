Feature: UPS Tracking - Verify Invalid Tracking Number Handling - Negative

  Scenario: Submitting a non-numeric invalid tracking number displays error and hint
    Given I am on the Order Search Page
    And I enter "INVALID123" into the "tracking number" field
    And I click the "Track" button
    Then the "error message" should display "Please provide a tracking number."
    And the "tracking number format hint" should display "Tracking numbers usually start with 1Z."
