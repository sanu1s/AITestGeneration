Feature: Order Tracking - Valid Order with Price Adjustments (Positive)

  Scenario: Successfully track an order where item price was adjusted
    Given User is on the order tracking page
    When User enters order number "ADJUSTED-PRICE-123"
    And User clicks the "Track Order" button
    Then The status message should display "Order ADJUSTED-PRICE-123: Processed. Price updated post-purchase."
