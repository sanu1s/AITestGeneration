Feature: Order Tracking Functionality - Negative Scenarios and Validations

  Scenario: Attempt to track an order that is not eligible for price adjustment
    Given User is on the order tracking page
    When User enters order number "ORD98765"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD98765 found. Status: Delivered. Not eligible for price adjustment."
