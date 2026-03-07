Feature: InvalidTrackingNumber_SpecificInputValidation_PositiveTest

  Scenario: Ensure both error message and UI note are present for '12344'
    Given I am on the UPS Tracking Page
    When I enter "12344" into the "tracking number" field
    And I click the "Track" button
    Then the "error message display" should display "Please provide a tracking number."
    And the "UI note display" should display "Tracking numbers usually start with 1Z."
    And the "UI note display" section should be "visible"
