Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: Successfully track a valid order eligible for price adjustment
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD12345 found. Item is now on sale. Eligible for price adjustment request."
