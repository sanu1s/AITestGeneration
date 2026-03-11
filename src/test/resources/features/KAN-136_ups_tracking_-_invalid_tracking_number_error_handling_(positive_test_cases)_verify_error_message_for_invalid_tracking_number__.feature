Feature: UPS Tracking - Invalid Tracking Number Error Handling (Positive Test Cases)

  Scenario: Verify error message for invalid tracking number '12344'
    Given I am on the Order Search Page
    And I enter "12344" into the "Tracking Number" field
    And I click the "Track" button
    Then the "Error Message" should display "Please provide a tracking number."
    And the "Tracking Format Hint" should display "Tracking numbers usually start with 1Z."
