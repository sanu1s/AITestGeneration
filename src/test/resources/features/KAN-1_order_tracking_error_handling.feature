Feature: Order Tracking Error Handling

  Scenario: Display error for invalid format order number (non-numeric)
    Given User is on the order tracking page
    When User enters order number "INVALID!"
    And User clicks the "Track Order" button
    Then An error message "Invalid order number format." should be displayed
