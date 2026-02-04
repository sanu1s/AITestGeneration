Feature: Order Tracking - Positive Scenarios for UPS Drop-off and Boxed Status

  Scenario: Verify Order Status Displays 'Dropped off at UPS'
    Given User is on the order tracking page
    When User enters order number "ORDER_UPS_DROP_101"
    And User clicks the "Track Order" button
    Then The status message should display "Dropped off at UPS"
