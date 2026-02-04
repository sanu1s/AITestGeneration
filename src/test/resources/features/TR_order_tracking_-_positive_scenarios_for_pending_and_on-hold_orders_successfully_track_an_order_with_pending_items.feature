Feature: Order Tracking - Positive Scenarios for Pending and On-Hold Orders

  Scenario: Successfully track an order with pending items
    Given User is on the order tracking page
    When User enters order number "PENDING123"
    And User clicks the "Track Order" button
    Then The status message should display "Order is pending due to items being out of stock."
