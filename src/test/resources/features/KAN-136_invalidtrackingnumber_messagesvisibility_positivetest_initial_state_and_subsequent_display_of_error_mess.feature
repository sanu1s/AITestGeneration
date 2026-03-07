Feature: InvalidTrackingNumber_MessagesVisibility_PositiveTest

  Scenario: Initial state and subsequent display of error messages
    Given I am on the UPS Tracking Page
    Then the "error message display" section should be "hidden"
    And the "UI note display" section should be "hidden"
    When I enter "12344" into the "tracking number" field
    And I click the "Track" button
    Then the "error message display" section should be "visible"
    And the "UI note display" section should be "visible"
