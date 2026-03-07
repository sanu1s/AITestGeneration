Feature: InvalidTrackingNumber_ErrorDisplay_PositiveTest

  Scenario: Confirm visibility of error elements after invalid input submission
    Given I am on the UPS Tracking Page
    And I enter "12344" into the "tracking number" field
    And I click the "Track" button
    Then the "error message display" section should be "visible"
    And the "UI note display" section should be "visible"
