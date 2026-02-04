Feature: Order Tracking - Verify Cancellation Status (Positive)

  Scenario: Track an order with a fully cancelled item (Hutch)
    Given user is on the order tracking page
    When user enters order number "ORD_HUTCH_CXL_789"
    And user clicks on "Track Order" button
    Then the status message should display "Order ORD_HUTCH_CXL_789 is fully cancelled."
