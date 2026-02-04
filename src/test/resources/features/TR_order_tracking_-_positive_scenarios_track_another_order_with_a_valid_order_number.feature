Feature: Order Tracking - Positive Scenarios

  Scenario: Track another order with a valid order number
    Given User is on the order tracking page
    When User enters order number "XYZ98765"
    And User clicks the "Track Order" button
    Then The status message should display "Order XYZ98765 is out for delivery."
