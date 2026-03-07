Feature: UPS Tracking - Verify Invalid Tracking Number Format Hint - Positive

  Scenario: Submitting a short invalid tracking number displays the helpful format hint
    Given I am on the Order Search Page
    And I enter "12344" into the "tracking number" field
    And I click the "Track" button
    Then the "tracking number format hint" should display "Tracking numbers usually start with 1Z."
