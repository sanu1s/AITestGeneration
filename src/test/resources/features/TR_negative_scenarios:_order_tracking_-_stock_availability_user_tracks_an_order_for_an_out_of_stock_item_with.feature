Feature: Negative Scenarios: Order Tracking - Stock Availability

  Scenario: User tracks an order for an out-of-stock item with uncertain restock - Scenario 2
    Given User is on the order tracking page
    When User enters order number "ORD_OOS_UNCERT_002"
    And User clicks the "Track Order" button
    Then The status message should display "I do not. We may get some stock by the end of this month beginning of August but I am not able to guarantee this. I am so sorry."
