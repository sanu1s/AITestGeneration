Feature: Order Quest UI Elements - Negative Scenarios

  Scenario: Verify No Initial Error Messages Are Displayed
    Given I navigate to the Order Quest page
    Then the error display area with ID "error" should not be visible
