Feature: Order Information - Packaging and Pickup Details (Positive Scenarios)

  Scenario: Verify Front Door Pickup Availability for an Order
    Given User is on the order tracking page
    When User enters order number "PICKUP_DOOR_002"
    And User clicks the "Track Order" button
    Then The status message should display "Order PICKUP_DOOR_002 is eligible for front door pickup."
