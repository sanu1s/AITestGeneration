Feature: Order Tracking - Negative Scenarios for Refund Inquiry

  Scenario: User attempts to track a refund ID as an order number
    Given User is on the order tracking page
    When User enters "REF123456" into the order number field
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please enter a valid order number."
