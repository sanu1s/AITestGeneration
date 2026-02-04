Feature: Order Tracking - Verify Canceled Order Status (Positive Scenarios)

  Scenario: Successfully track a manually canceled order
    Given User is on the order tracking page
    When User enters order number "MANUAL_CANCEL_ORD123"
    And User clicks the "Track Order" button
    Then The order status should display "Canceled"
