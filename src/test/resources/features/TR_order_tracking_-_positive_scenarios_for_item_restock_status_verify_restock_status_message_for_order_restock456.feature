Feature: Order Tracking - Positive Scenarios for Item Restock Status

  Scenario: Verify Restock Status Message for Order RESTOCK456
    Given User is on the order tracking page
    When User enters order number "RESTOCK456"
    And User clicks the "Track Order" button
    Then The status message should display "Items will be restock, I just would not be able to give you an exact date and I am so sorry."
