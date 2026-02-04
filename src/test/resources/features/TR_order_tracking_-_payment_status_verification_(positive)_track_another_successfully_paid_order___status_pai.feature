Feature: Order Tracking - Payment Status Verification (Positive)

  Scenario: Track another successfully paid order - Status Paid
    Given user is on the order tracking page
    When user enters order number "ORD67890" for a paid order
    And user clicks the "Track Order" button
    Then the status message should display "Order Status: Paid"
