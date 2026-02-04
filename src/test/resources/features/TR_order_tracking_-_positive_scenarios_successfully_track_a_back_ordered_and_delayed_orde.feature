Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track a back-ordered and delayed order
    Given User is on the order tracking page
    When User enters order number "ORD001BACKORDER"
    And User clicks the "Track Order" button
    Then The order status should display "Back ordered and delivery has been delayed until December"
