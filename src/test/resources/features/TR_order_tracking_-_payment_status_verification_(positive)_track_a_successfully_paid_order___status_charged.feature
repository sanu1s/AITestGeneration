Feature: Order Tracking - Payment Status Verification (Positive)

  Scenario: Track a successfully paid order - Status Charged
    Given user is on the order tracking page
    When user enters order number "ORD12345" for a paid order
    And user clicks the "Track Order" button
    Then the status message should display "Order Status: Charged"
