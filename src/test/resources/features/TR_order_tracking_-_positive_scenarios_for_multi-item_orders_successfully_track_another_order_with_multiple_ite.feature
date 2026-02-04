Feature: Order Tracking - Positive Scenarios for Multi-Item Orders

  Scenario: Successfully track another order with multiple items and different statuses
    Given User is on the order tracking page
    When User enters order number "MULTIITEM002"
    And User clicks the "Track Order" button
    Then The status message should display "It looks your order has multiple items with different statuses. Here's a summary:"
