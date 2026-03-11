Feature: UPS Tracking - Invalid Tracking Number Error Handling (Negative Test Cases)

  Scenario: Verify error message when tracking number field is left empty
    Given I am on the Order Search Page
    And I enter "" into the "Tracking Number" field
    And I click the "Track" button
    Then the "Error Message" should display "Please provide a tracking number."
    And the "Tracking Format Hint" should display "Tracking numbers usually start with 1Z."
