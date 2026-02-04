Feature: Order Tracking - Negative Scenarios for UPS Drop-off and Boxed Status

  Scenario: Verify Order Status Does Not Display 'Dropped off at UPS' for a Processing Order
    Given User is on the order tracking page
    When User enters order number "ORDER_PROCESSING_303"
    And User clicks the "Track Order" button
    Then The status message should not contain "Dropped off at UPS"
    And The status message should display "Processing"
