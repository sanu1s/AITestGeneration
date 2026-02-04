Feature: Order Tracking - Positive Test Cases - Verify Manually Updated Address

  Scenario: Successfully verify another order with a different manually updated address
    Given User is on the order tracking page
    When User enters order number "ORD_UPD_002"
    And User clicks the "Track Order" button
    Then The order status should display "Order found and address updated to: 456 Oak Ave, Othercity, USA"
