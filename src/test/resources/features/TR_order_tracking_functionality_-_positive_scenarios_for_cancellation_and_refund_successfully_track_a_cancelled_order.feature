Feature: Order Tracking Functionality - Positive Scenarios for Cancellation and Refund

  Scenario: Successfully track a cancelled order
    Given User is on the order tracking page
    When User enters order number "CANCELLED-ORD-123"
    And User clicks the "Track Order" button
    Then The status message should display "Order CANCELLED. Refund Initiated."
