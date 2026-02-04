Feature: Order Tracking - Replacement Item Return Options - Positive Test Cases

  Scenario: Verify Mail-Only Return Option for a Replaced Item
    Given User is on the order tracking page
    When User enters order number "REPL67890"
    And User clicks the "Track Order" button
    Then The status message should display "Your replacement order is complete. Original item must be sent back via mail."
    And The current URL should be "https://www.example.com/order-details/REPL67890"
