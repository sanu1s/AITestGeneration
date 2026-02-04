Feature: Order Information - Packaging and Pickup Details (Negative Scenarios)

  Scenario: Verify Order Not Eligible for Front Door Pickup
    Given User is on the order tracking page
    When User enters order number "PICKUP_DEPOT_004"
    And User clicks the "Track Order" button
    Then The status message should display "Order PICKUP_DEPOT_004 requires drop-off at nearest depot."
