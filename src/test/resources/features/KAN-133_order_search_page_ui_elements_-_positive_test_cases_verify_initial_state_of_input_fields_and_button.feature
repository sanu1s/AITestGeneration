Feature: Order Search Page UI Elements - Positive Test Cases

  Scenario: Verify initial state of input fields and button
    Given User navigates to the Order Search page
    Then The "Order Number" input field should be empty
    And The "Tracking Number" input field should be empty
    And The "Track Order" button should be enabled
