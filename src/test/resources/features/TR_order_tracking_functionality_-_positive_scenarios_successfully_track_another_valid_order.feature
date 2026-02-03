Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: Successfully track another valid order
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD67890 found. Status: Shipped."
