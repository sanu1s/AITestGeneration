Feature: Order Tracking - Negative Scenarios for Refund Inquiry

  Scenario: User attempts to track a generic money status query as an order number
    Given User is on the order tracking page
    When User enters "money back" into the order number field
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format."
