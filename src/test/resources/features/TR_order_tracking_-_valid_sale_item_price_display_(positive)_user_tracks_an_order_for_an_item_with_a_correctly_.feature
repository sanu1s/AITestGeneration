Feature: Order Tracking - Valid Sale Item Price Display (Positive)

  Scenario: User tracks an order for an item with a correctly applied non-20% sale
    Given User is on the order tracking page
    When User enters order number "SALE-CORRECT-789"
    And User clicks the "Track Order" button
    Then The status message should display "Order SALE-CORRECT-789: Shipped. Item purchased on sale."
