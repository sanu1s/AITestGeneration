Feature: Order Confirmation and Status Verification - Positive Test Cases

  Scenario: Successfully confirm another order with correct details
    Given User is on the order tracking page
    When User enters order number "VERIFY456"
    And User clicks the "Track Order" button
    Then The status message should display "Order VERIFY456 confirmed and awaiting shipment."
