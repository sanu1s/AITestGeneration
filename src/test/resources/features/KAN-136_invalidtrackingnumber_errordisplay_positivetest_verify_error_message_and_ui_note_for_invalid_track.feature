Feature: InvalidTrackingNumber_ErrorDisplay_PositiveTest

  Scenario: Verify error message and UI note for invalid tracking number
    Given I am on the UPS Tracking Page
    And I enter "12344" into the "tracking number" field
    And I click the "Track" button
    Then the "error message display" should contain text "Please provide a tracking number."
    And the "UI note display" should contain text "Tracking numbers usually start with 1Z."
