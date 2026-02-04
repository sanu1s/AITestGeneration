Feature: Order Tracking Functionality - Negative Scenarios

  Scenario: Tracking a recently canceled item/order
    Given User is on the order tracking page
    When User enters order number "CANCEL789"
    And User clicks the "Track Order" button
    Then The error message should display "Order CANCEL789 has been canceled and removed from schedule."
