Feature: Order Tracking - Positive Test Cases for Shipped Orders

  Scenario: Successfully track an order that has shipped with an expected delivery date
    Given User is on the order tracking page
    When User enters order number "SHIPPED123"
    And User clicks the "Track Order" button
    Then The status message should display "It looks your order has shipped and is expected to arrive by today, July 25, 2025."
