Feature: Order Tracking - Positive Case: Verify Accurate Partial Delivery Status

  Scenario: System Accurately Displays 'Partially Delivered' Status for an Order
    Given User is on the order tracking page
    When User enters order number "PO_DELIVERED_PARTIAL_1"
    And User clicks the "Track Order" button
    Then The status message should display "Partially Delivered"
