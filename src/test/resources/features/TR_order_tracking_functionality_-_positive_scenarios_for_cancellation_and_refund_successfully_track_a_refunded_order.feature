Feature: Order Tracking Functionality - Positive Scenarios for Cancellation and Refund

  Scenario: Successfully track a refunded order
    Given User is on the order tracking page
    When User enters order number "REFUNDED-ORD-456"
    And User clicks the "Track Order" button
    Then The status message should display "Order REFUNDED. Amount credited to source."
