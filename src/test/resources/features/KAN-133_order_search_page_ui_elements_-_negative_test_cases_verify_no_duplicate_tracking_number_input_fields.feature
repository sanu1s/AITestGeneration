Feature: Order Search Page UI Elements - Negative Test Cases

  Scenario: Verify no duplicate Tracking Number input fields
    Given User navigates to the Order Search page
    Then There should be exactly one "Tracking Number" input field
