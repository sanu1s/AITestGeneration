Feature: Price Adjustment Request

  Scenario: Successfully request a price adjustment for a recently ordered item now on sale
    Given a customer has an order for an item 'Premium Widget' (Order ID: 'ORD-54321') placed recently (e.g., within the last 7 days)
    And the 'Premium Widget' is now advertised on sale at a lower price
    When the customer communicates a request for a price adjustment for 'ORD-54321' because the 'Premium Widget' is now on sale
    Then the system should identify the eligible order and sale price
    And the system should process the price adjustment
    And the customer should receive a confirmation of the refund for the price difference
