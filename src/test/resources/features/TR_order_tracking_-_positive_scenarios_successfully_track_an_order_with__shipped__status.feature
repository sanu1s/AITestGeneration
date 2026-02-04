Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track an order with 'Shipped' status
    Given User is on the order tracking page
    When User enters order number "ORD_SHI_67890"
    And User clicks the "Track Order" button
    Then The status message should display "Your order ORD_SHI_67890 has been Shipped."
