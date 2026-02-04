Feature: Order Tracking - Positive Case: Verify Accurate Partial Delivery Status

  Scenario: System Accurately Displays 'Items Pending' Status for an Order
    Given User is on the order tracking page
    When User enters order number "PO_PENDING_ITEMS_2"
    And User clicks the "Track Order" button
    Then The status message should display "Items Pending Shipment"
