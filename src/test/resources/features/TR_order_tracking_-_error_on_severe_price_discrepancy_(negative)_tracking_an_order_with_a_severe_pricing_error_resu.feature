Feature: Order Tracking - Error on Severe Price Discrepancy (Negative)

  Scenario: Tracking an order with a severe pricing error results in an error message
    Given User is on the order tracking page
    When User enters order number "CRITICAL-PRICE-ERR"
    And User clicks the "Track Order" button
    Then The error message should display "Order CRITICAL-PRICE-ERR: Failed to retrieve details. Pricing error detected."
