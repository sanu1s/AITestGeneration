Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track an order with less than 12 digits
    Given User is on the order tracking page
    When User enters order number "12345678901"
    And User clicks the 'Track Order' button
    Then The error message "Order Number should be 12 digits only and should be only Numeric" should be displayed
