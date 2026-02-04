Feature: Order Tracking - Knowing the Item (Positive Scenarios)

  Scenario: Successfully identify item for valid order "ORD1002"
    Given User is on the order tracking page
    When User enters order number "ORD1002"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD1002 contains item 'Wireless Mouse'"
