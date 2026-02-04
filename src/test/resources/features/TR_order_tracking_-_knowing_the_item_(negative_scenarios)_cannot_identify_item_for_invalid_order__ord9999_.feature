Feature: Order Tracking - Knowing the Item (Negative Scenarios)

  Scenario: Cannot identify item for invalid order "ORD9999"
    Given User is on the order tracking page
    When User enters order number "ORD9999"
    And User clicks the "Track Order" button
    Then The error message should display "Order ORD9999 not found. Cannot retrieve item details."
