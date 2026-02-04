Feature: Order Tracking - Replacement Item Return Options - Positive Test Cases

  Scenario: Verify In-Store and Mail Return Options for a Replaced Item
    Given User is on the order tracking page
    When User enters order number "REPL12345"
    And User clicks the "Track Order" button
    Then The status message should display "Your replacement order has been processed. Original item can be returned in-store or via mail."
    And The current URL should be "https://www.example.com/order-details/REPL12345"
