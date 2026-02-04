Feature: Order Tracking - Negative Scenarios: Verify Changed Delivery Location Status Errors

  Scenario: Verify error message when order number field is empty
    Given User is on the order tracking page
    When User leaves the order number field empty
    And User clicks "Track Order"
    Then The error message should display "Order Number Required"
