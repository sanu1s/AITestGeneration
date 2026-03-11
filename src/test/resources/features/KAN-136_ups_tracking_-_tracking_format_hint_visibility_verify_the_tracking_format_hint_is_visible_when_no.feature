Feature: UPS Tracking - Tracking Format Hint Visibility

  Scenario: Verify the tracking format hint is visible when no tracking number is provided
    Given I am on the Order Search Page
    And I click the "Track" button
    Then the "Tracking Format Hint" should display "Tracking numbers usually start with 1Z."
    And the "Error Message" should display "Please provide a tracking number."
