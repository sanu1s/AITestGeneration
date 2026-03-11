Feature: UPS Tracking - Invalid Tracking Number Error Handling (Positive Test Cases)

  Scenario: Verify error message for another invalid tracking number 'ABCDE'
    Given I am on the Order Search Page
    And I enter "ABCDE" into the "Tracking Number" field
    And I click the "Track" button
    Then the "Error Message" should display "Please provide a tracking number."
    And the "Tracking Format Hint" should display "Tracking numbers usually start with 1Z."
