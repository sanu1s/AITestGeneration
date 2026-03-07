Feature: InvalidTrackingNumber_MessagesVisibility_PositiveTest

  Scenario: Verify specific text of error and note after entering invalid tracking number
    Given I am on the UPS Tracking Page
    When I enter "12344" into the "tracking number" field
    And I click the "Track" button
    Then the "error message display" should display "Please provide a tracking number."
    And the "UI note display" should display "Tracking numbers usually start with 1Z."
