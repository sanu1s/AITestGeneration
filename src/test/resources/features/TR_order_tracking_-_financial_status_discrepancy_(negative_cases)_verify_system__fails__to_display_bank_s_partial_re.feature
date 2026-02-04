Feature: Order Tracking - Financial Status Discrepancy (Negative Cases)

  Scenario: Verify system *fails* to display bank's partial reservation
    Given User is on the order tracking page
    When User enters order number "ORD1003"
    And User clicks the "Track Order" button
    Then The status message should display "Order confirmed. Awaiting payment."
    And The status message should not contain "partial reservation"
    And The status message should not contain "253 dollars"
