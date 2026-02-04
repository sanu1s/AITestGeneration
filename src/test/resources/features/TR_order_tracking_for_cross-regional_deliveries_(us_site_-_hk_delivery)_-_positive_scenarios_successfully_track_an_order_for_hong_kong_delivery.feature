Feature: Order Tracking for Cross-Regional Deliveries (US Site - HK Delivery) - Positive Scenarios

  Scenario: Successfully track an order for Hong Kong delivery placed on the US website
    Given I am on the order tracking page
    When User enters order number "HKUS12345"
    And User clicks the "Track Order" button
    Then The status message should display "Order HKUS12345 for Hong Kong is In Transit from US warehouse."
