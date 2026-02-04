Feature: Order Tracking for Cross-Regional Deliveries (US Site - HK Delivery) - Negative Scenarios

  Scenario: Attempt to track an invalid/unsupported order for Hong Kong delivery placed on the US website
    Given I am on the order tracking page
    When User enters order number "HKUS67890"
    And User clicks the "Track Order" button
    Then The error message should display "Order HKUS67890: Regional mismatch or order not found."
