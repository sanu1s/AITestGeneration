Feature: Order Confirmation and Status Verification - Positive Test Cases

  Scenario: Successfully confirm an order with correct details
    Given User is on the order tracking page
    When User enters order number "CONFIRM123"
    And User clicks the "Track Order" button
    Then The status message should display "Order CONFIRM123 details are correct and processing."
