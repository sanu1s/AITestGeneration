Feature: InvalidTrackingNumber_SpecificInputValidation_PositiveTest

  Scenario: Validate error handling for the specific invalid input '12344'
    Given I am on the UPS Tracking Page
    When I enter "12344" into the "tracking number" field
    And I click the "Track" button
    Then the "error message display" should contain text "Please provide a tracking number."
    And the "UI note display" should contain text "Tracking numbers usually start with 1Z."
    And the "error message display" section should be "visible"
