Feature: UPS Tracking - Verify Invalid Tracking Number Error Message - Positive

  Scenario: Submitting a short invalid tracking number displays the expected error message
    Given I am on the Order Search Page
    And I enter "12344" into the "tracking number" field
    And I click the "Track" button
    Then the "error message" should display "Please provide a tracking number."
