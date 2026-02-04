Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track a re-scheduled order
    Given User is on the order tracking page
    When User enters order number "ORD-RESCHEDULED"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD-RESCHEDULED was re-scheduled successfully."
