Feature: Order Tracking - Verify Cancellation Status (Positive)

  Scenario: Track an order with a partially cancelled item (Desk)
    Given user is on the order tracking page
    When user enters order number "ORD_DESK_CXL_456"
    And user clicks on "Track Order" button
    Then the status message should display "Order ORD_DESK_CXL_456 contains cancelled item 'Desk'."
