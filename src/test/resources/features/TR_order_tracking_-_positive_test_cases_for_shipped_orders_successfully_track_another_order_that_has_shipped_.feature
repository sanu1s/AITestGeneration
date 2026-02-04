Feature: Order Tracking - Positive Test Cases for Shipped Orders

  Scenario: Successfully track another order that has shipped with a different expected delivery date
    Given User is on the order tracking page
    When User enters order number "SHIPPED456"
    And User clicks the "Track Order" button
    Then The status message should display "It looks your order has shipped and is expected to arrive by tomorrow, July 26, 2025."
