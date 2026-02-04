Feature: Order Tracking - Validate No Charge for Out-of-Stock Items (Positive Test Cases)

  Scenario: Verify no charge message for another order with out-of-stock items
    Given User is on the order tracking page
    When User enters order number "OOS101"
    And User clicks the "Track Order" button
    Then The status message should display "We do not charge for items that are not in stock so you have not been charged."
