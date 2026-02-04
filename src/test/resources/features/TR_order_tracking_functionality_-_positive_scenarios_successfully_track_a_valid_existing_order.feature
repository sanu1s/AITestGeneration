Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: Successfully track a valid existing order
    Given User is on the order tracking page
    When User enters order number "181922000000"
    And User clicks the "Track Order" button
    Then The order status should display "Order delivered on 2023-10-26"
