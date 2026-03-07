Feature: OrderSearchPage_InitialLoad_PositiveTests

  Scenario: Verify input fields and button are interactive on initial load
    Given I am on the Order Search Page
    When I enter "12345" into the "Order Number" field
    And I enter "TRK67890" into the "Tracking Number" field
    And I click the "Search" button
    Then the "Order Number" field should contain text "12345"
    And the "Tracking Number" field should contain text "TRK67890"
    And the "Search" button should be "visible"
