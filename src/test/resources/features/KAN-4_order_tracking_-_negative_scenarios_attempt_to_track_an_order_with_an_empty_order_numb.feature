Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track an order with an empty order number
    Given User is on the order tracking page
    When User enters order number ""
    And User clicks the 'Track Order' button
    Then The error message "Order Number should be 12 digits only and should be only Numeric" should be displayed
