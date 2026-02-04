Feature: Order Tracking - Negative Scenarios for UPS Drop-off and Boxed Status

  Scenario: Verify Order Status Does Not Display 'Boxed Up' for an Order Awaiting Packaging
    Given User is on the order tracking page
    When User enters order number "ORDER_AWAITING_PACK_404"
    And User clicks the "Track Order" button
    Then The status message should not contain "Boxed Up"
    And The status message should display "Awaiting Packaging"
