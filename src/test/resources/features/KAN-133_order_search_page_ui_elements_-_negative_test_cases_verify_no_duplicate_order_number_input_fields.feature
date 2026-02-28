Feature: Order Search Page UI Elements - Negative Test Cases

  Scenario: Verify no duplicate Order Number input fields
    Given User navigates to the Order Search page
    Then There should be exactly one "Order Number" input field
