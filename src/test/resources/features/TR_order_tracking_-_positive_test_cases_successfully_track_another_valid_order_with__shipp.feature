Feature: Order Tracking - Positive Test Cases

  Scenario: Successfully track another valid order with 'Shipped' status
    Given User is on the order tracking page
    When User enters order number "SHIP7890"
    And User clicks "Track Order" button
    Then The status message should display "Order SHIP7890 has been shipped."
    And The current URL should be "https://example.com/track/SHIP7890"
