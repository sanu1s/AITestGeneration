Feature: Order Tracking - Negative Scenarios for Delivery Fee Refund

  Scenario: Verify delivery fee portion is not refunded for another item
    Given User is on the order tracking page
    When User enters order number "ORD23456"
    And User clicks the "Track Order" button
    Then The status message should display "Portion of delivery fee for Sofa not refunded."
