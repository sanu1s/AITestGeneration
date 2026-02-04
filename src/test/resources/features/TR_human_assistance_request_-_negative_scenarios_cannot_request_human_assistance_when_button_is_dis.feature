Feature: Human Assistance Request - Negative Scenarios

  Scenario: Cannot request human assistance when button is disabled
    Given User is on the support page with "Get a human" button disabled
    When User attempts to click the "Get a human" button
    Then The "Get a human" button should remain disabled
    Then No error message should be displayed
