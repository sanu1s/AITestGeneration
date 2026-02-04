Feature: Order Tracking - Positive Scenarios for UPS Drop-off and Boxed Status

  Scenario: Verify Order Status Displays 'Boxed Up'
    Given User is on the order tracking page
    When User enters order number "ORDER_BOXED_202"
    And User clicks the "Track Order" button
    Then The status message should display "Boxed Up"
